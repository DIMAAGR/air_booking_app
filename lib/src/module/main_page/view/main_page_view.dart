import 'package:air_booking_app/src/module/home/view/home_view.dart';
import 'package:air_booking_app/src/module/main_page/store/main_page_store.dart';
import 'package:air_booking_app/src/module/main_page/widget/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({super.key});

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  final MainPageStore _mainPageStore = GetIt.I<MainPageStore>();

  final List<Widget> _pageList = const [
    HomeView(),
    Text('B'),
    Text('C'),
    Text('D'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (context) => _pageList[_mainPageStore.selectedIndex],
      ),
      bottomNavigationBar: const ApplicationBottomBar(),
    );
  }
}
