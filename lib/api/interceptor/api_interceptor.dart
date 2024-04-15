// ignore_for_file: avoid_catches_without_on_clauses

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:simple_tv/data/auth_token_repo.dart';
import 'package:simple_tv/di/service_locator.dart';

@injectable
class ApiInterceptor extends Interceptor {
  final _logger = Logger(
    filter: _LogFilter(),
    printer: _LogPrinter(className: 'LOGGER'),
    output: _LogOutput(logOutputs: [ConsoleOutput()]),
  );

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response != null) {
      handler.next(err);
    }
  }

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await sl<AuthTokenRepository>().getToken();

    if (token?.isNotEmpty == true) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    try {
      final headers = options.headers.entries
          .map((e) => '${e.key} : ${e.value}')
          .join('\n');
      _logger.i('REQUEST -> ${options.method} ${options.uri}\n$headers');
      if (options.data != null) {
        _logger.i(options.data);
      }
      _logger.i('REQUEST END');
    } catch (e) {
      _logger.e(e);
    }
    return handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    final base = response.requestOptions;
    final headers =
        base.headers.entries.map((e) => '${e.key}: ${e.value}').join('\n');
    var level = Level.info;
    if ((response.statusCode ?? 0) >= 400) {
      level = Level.error;
    }
    _logger.log(
      level,
      'RESPONSE <- ${response.statusCode} ${base.method} ${base.uri}\n$headers',
    );
    if (response.data != null) {
      _logger.log(level, response.data);
    }
    _logger.log(level, 'RESPONSE END');
    handler.next(response);
  }
}

class _LogOutput extends LogOutput {
  _LogOutput({required this.logOutputs});

  final List<LogOutput> logOutputs;

  @override
  void output(OutputEvent event) {
    for (final logOutput in logOutputs) {
      logOutput.output(event);
    }
  }
}

class _LogPrinter extends PrettyPrinter {
  _LogPrinter({required this.className});

  final String className;

  @override
  List<String> log(LogEvent event) {
    final emoji = PrettyPrinter.defaultLevelEmojis[event.level];
    final output = '$emoji $className - ${event.message}';
    final result = <String>[];
    output.split('\n').forEach(result.add);
    return result;
  }
}

class _LogFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) => true;
}
