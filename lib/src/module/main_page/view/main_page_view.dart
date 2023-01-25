import 'package:air_booking_app/src/module/main_page/store/main_page_store.dart';
import 'package:air_booking_app/src/module/main_page/widget/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({super.key});

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  final MainPageStore _mainPageStore = GetIt.I<MainPageStore>();
  final List<Widget> _options = const [
    Text('A'),
    Text('B'),
    Text('C'),
    Text('D'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MainView')),
      body: Observer(
        builder: (context) {
          return _options[_mainPageStore.selectedIndex];
        },
      ),
      bottomNavigationBar: const ApplicationBottomBar(),
    );
  }
}
