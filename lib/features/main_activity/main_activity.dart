import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mshi/core/ui/ui.dart';
import 'package:mshi/features/main_activity/chats/chats_list_screen.dart';
import 'package:mshi/features/main_activity/courses/courses_list_screen.dart';
import 'package:mshi/features/main_activity/home_screen/home_screen.dart';
import 'package:mshi/features/main_activity/map/map_screen.dart';
import 'package:mshi/features/main_activity/news/news_screen/news_screen.dart';
import 'package:mshi/features/main_activity/profiles/user_profile/user_profile_screen.dart';
import 'package:mshi/features/main_activity/raiting/raiting_screen.dart';

class MainActivity extends StatefulWidget {
  MainActivity({super.key});

  @override
  State<MainActivity> createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  int pageIndex = 0;

  List<Widget> screens = const [
    HomeScreen(),
    NewsScreen(),
    MapScreen(),
    RaitingScreen(),
    CoursesListScreen(),
    ChatsListScreen(),
    UserProfileScreen(),
  ];

  final double iconWidth = 24;

  final items = <Widget>[
    SvgPicture.asset(
      'assets/icons/house-bolt-alt.svg',
      color: primaryWhiteColor,
      width: 24,
    ),
    SvgPicture.asset(
      'assets/icons/square-list.svg',
      color: primaryWhiteColor,
      width: 24,
    ),
    SvgPicture.asset(
      'assets/icons/map.svg',
      color: primaryWhiteColor,
      width: 24,
    ),
    SvgPicture.asset(
      'assets/icons/star.svg',
      color: primaryWhiteColor,
      width: 24,
    ),
    SvgPicture.asset(
      'assets/icons/graduation-hat-alt.svg',
      color: primaryWhiteColor,
      width: 24,
    ),
    SvgPicture.asset(
      'assets/icons/message-circle.svg',
      color: primaryWhiteColor,
      width: 24,
    ),
    SvgPicture.asset(
      'assets/icons/user-alt-1.svg',
      color: primaryWhiteColor,
      width: 24,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[pageIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              selectedItemColor: Colors.white),
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
        ),
        child: CurvedNavigationBar(
          color: primaryGreenColor,
          buttonBackgroundColor: primaryGreenColor,
          backgroundColor: Colors.transparent,
          height: 50,
          items: items,
          onTap: (index) {
            setState(() {
              pageIndex = index;
            });
          },
        ),
      ),
    );
  }
}
