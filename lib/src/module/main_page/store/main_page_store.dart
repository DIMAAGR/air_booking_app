import 'package:air_booking_app/src/core/enums/enums.dart';
import 'package:mobx/mobx.dart';

part 'main_page_store.g.dart';

class MainPageStore = _MainPageStore with _$MainPageStore;

// Para organizar essa classe pensei no seguinte:
// 1 - Variaveis e valores constantes (finais) vem primeiro no código, ficando todas juntas.
// 2 - Como as observáveis tem notação, virão como segundas na classe.
// 3 - Depois dos observáveis virão os métodos, sendo os primeiros os com notação action.
// 4 - Após os métodos com notação action virem, virão os sem a notação action, que deverão ser todos privados.

abstract class _MainPageStore with Store {
  //

  // Variables and constants (final)
  final int pageIndexSize = 3;

  // observables
  @observable
  StoreState state = StoreState.idle;

  @observable
  int selectedIndex = 0;

  // methods
  @action
  changeIndex(int newIndexValue) {
    if (newIndexValue > pageIndexSize) {
      state = StoreState.error;
      throw Exception('newIndexValue cannot be greater than PageIndexSize');
    } else {
      selectedIndex = newIndexValue;
    }
  }
}
