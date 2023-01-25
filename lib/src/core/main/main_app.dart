import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

// =============================================================================
// Main App Widget
// =============================================================================

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'AirBooking',
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
