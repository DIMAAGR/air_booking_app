import 'package:air_booking_app/src/core/theme/app_theme.dart';
import 'package:air_booking_app/src/module/main_page/store/main_page_store.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

class ApplicationBottomBar extends StatelessWidget {
  const ApplicationBottomBar({super.key});
  //

  // Deactivated Icons
  final homeDeactivated = const Icon(FluentSystemIcons.ic_fluent_home_regular);
  final searchDeactivated = const Icon(FluentSystemIcons.ic_fluent_search_regular);
  final ticketDeactivated = const Icon(FluentSystemIcons.ic_fluent_ticket_regular);
  final profileDeactivated = const Icon(FluentSystemIcons.ic_fluent_person_regular);

  // Activated Icons
  final homeActivated = const Icon(FluentSystemIcons.ic_fluent_home_filled);
  final searchActivated = const Icon(FluentSystemIcons.ic_fluent_search_filled);
  final ticketActivated = const Icon(FluentSystemIcons.ic_fluent_ticket_filled);
  final profileActivated = const Icon(FluentSystemIcons.ic_fluent_person_filled);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return BottomNavigationBar(
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          onTap: GetIt.I<MainPageStore>().changeIndex,
          selectedItemColor: AppTheme.colors.blueGrey,
          unselectedItemColor: AppTheme.colors.blackBlueGrey,
          currentIndex: GetIt.I<MainPageStore>().selectedIndex,
          items: [
            BottomNavigationBarItem(icon: homeDeactivated, activeIcon: homeActivated, label: 'Home'),
            BottomNavigationBarItem(icon: searchDeactivated, activeIcon: searchActivated, label: 'Search'),
            BottomNavigationBarItem(icon: ticketDeactivated, activeIcon: ticketActivated, label: 'Ticket'),
            BottomNavigationBarItem(icon: profileDeactivated, activeIcon: profileActivated, label: 'Profile'),
          ],
        );
      },
    );
  }
}
