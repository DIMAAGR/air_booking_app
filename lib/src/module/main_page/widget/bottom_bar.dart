import 'package:air_booking_app/src/core/theme/app_theme.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class ApplicationBottomBar extends StatefulWidget {
  const ApplicationBottomBar({super.key});

  @override
  State<ApplicationBottomBar> createState() => _ApplicationBottomBarState();
}

class _ApplicationBottomBarState extends State<ApplicationBottomBar> {
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
    return BottomNavigationBar(
      elevation: 10,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: AppTheme.colors.blueGrey,
      unselectedItemColor: AppTheme.colors.blackBlueGrey,
      items: [
        BottomNavigationBarItem(icon: homeDeactivated, activeIcon: homeActivated, label: 'Home'),
        BottomNavigationBarItem(icon: searchDeactivated, activeIcon: searchActivated, label: 'Search'),
        BottomNavigationBarItem(icon: ticketDeactivated, activeIcon: ticketActivated, label: 'Ticket'),
        BottomNavigationBarItem(icon: profileDeactivated, activeIcon: profileActivated, label: 'Profile'),
      ],
    );
  }
}
