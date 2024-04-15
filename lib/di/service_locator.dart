import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_tv/di/service_locator.config.dart';

final sl = GetIt.instance;

@InjectableInit(
  initializerName: r'$configureDependencies',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies(String env) async {
  await $configureDependencies(sl, environment: env);
}
