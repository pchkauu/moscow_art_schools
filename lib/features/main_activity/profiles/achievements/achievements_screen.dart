import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mshi/core/ui/ui.dart';
import 'package:mshi/features/main_activity/home_screen/view/widgets/widgets.dart';

class AchievementsListScreen extends StatefulWidget {
  const AchievementsListScreen({super.key});

  @override
  State<AchievementsListScreen> createState() => _AchievementsListScreenState();
}

class _AchievementsListScreenState extends State<AchievementsListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const PrimarySliverAppBar(
            title: 'Достижения',
          )
        ],
        body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Card(
              color: primaryGreyColor.shade500,
              child: ListTile(
                title: const Text(
                  'Знаток русской культуры',
                  style: TextStyle(
                      color: primaryBlackColor,
                      fontSize: 14,
                      fontFamily: 'DeeDee',
                      fontWeight: FontWeight.w400),
                ),
                subtitle: Text(
                  'Пройдены все курсы МШИ',
                  style: TextStyle(
                      color: primaryGreyColor.shade100,
                      fontSize: 14,
                      fontFamily: 'DeeDee',
                      fontWeight: FontWeight.w400),
                ),
                trailing: SvgPicture.asset(
                  'assets/icons/logo.svg',
                  color: primaryGreenColor,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
