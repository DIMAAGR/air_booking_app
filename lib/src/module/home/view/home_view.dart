import 'package:air_booking_app/src/core/theme/app_theme.dart';
import 'package:air_booking_app/src/shared/widgets/gaps.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppTheme.padding.defaultViewPadding),
            child: Column(
              children: [
                HeightGaps.size40,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good Morning', style: AppTheme.textStyles.headLineStyle3),
                        HeightGaps.size6,
                        Text('Book Tickets', style: AppTheme.textStyles.headLineStyle1),
                      ],
                    ),
                    Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppTheme.borderSize.size14),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AppTheme.images.logo),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
