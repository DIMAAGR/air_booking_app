import 'package:air_booking_app/src/app_module.dart';
import 'package:air_booking_app/src/core/main/main_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const MainApp()));
}
