import 'package:flutter/material.dart';
import 'package:simple_tv/di/service_locator.dart';
import 'package:simple_tv/general_app/general_app_wrapper.dart';
import 'package:simple_tv/injectable_environments.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(SimpleTVEnvironments.dev);
  runApp(const GeneralAppWrapper());
}
