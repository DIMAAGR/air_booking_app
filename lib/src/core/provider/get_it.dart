import 'package:air_booking_app/src/module/main_page/store/main_page_store.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

class GetItInicializator {
  final GetIt _getIt = GetIt.I;

  GetItInicializator.initialize() {
    _showGetItWellcomeMessage();
    _initialize();
  }

  void _showGetItWellcomeMessage() {
    if (kDebugMode) {
      print('GET_IT: wellcome message!');
    }
  }

  void _initialize() {
    _getIt.registerLazySingleton(() => MainPageStore());
  }
}
