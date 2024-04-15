import 'package:flutter/material.dart';
import 'package:simple_tv/config/router/router.dart';
import 'package:simple_tv/config/theme/app_theme.dart';

final GlobalKey<ScaffoldMessengerState> snackBarKey =
    GlobalKey<ScaffoldMessengerState>();

class GeneralApp extends StatelessWidget {
  const GeneralApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        title: 'Simple TV',
        scaffoldMessengerKey: snackBarKey,
        debugShowCheckedModeBanner: false,
        theme: theme,
        routerConfig: router,
      );
}
