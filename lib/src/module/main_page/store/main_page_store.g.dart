// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MainPageStore on _MainPageStore, Store {
  late final _$stateAtom = Atom(name: '_MainPageStore.state', context: context);

  @override
  StoreState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(StoreState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  late final _$selectedIndexAtom =
      Atom(name: '_MainPageStore.selectedIndex', context: context);

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  late final _$_MainPageStoreActionController =
      ActionController(name: '_MainPageStore', context: context);

  @override
  dynamic changeIndex(int newIndexValue) {
    final _$actionInfo = _$_MainPageStoreActionController.startAction(
        name: '_MainPageStore.changeIndex');
    try {
      return super.changeIndex(newIndexValue);
    } finally {
      _$_MainPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
state: ${state},
selectedIndex: ${selectedIndex}
    ''';
  }
}
