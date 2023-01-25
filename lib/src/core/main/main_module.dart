import 'package:air_booking_app/src/module/test_view/test_view.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MainModule extends Module {
  @override
  List<ModularRoute> get routes => [ChildRoute(Modular.initialRoute, child: (_, args) => const TestView())];
}
