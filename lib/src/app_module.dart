// =============================================================================
// Application Main Module
// =============================================================================

import 'package:air_booking_app/src/core/main/main_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

/// The app main module controls all applications modules.
/// He sets all application routes and binds, he extends from [Module] class
/// that override the **binds** and **routes** getters

class AppModule extends Module {
  //

  // The modular routes use the ChildRoute to define the same,
  // routes are defined inside the **app_widget.dart** using
  // Modular.routeInformationParser and Modular.routerDelegate.

  // However, this addition of the ChildRoute is done within
  // the respective module of which it must be part, that is,
  // for example: the routes of the registration screens will
  // be inside the registration module, these modules are
  // declared using the ModuleRoute

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(Modular.initialRoute, module: MainModule()),
      ];

  // according to the documentation:
  // BINDS Represents an object that will be available for injection to other dependencies.

  @override
  List<Bind<Object>> get binds => [];
}
