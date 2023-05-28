import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mshi/core/ui/ui.dart';
import 'package:mshi/features/main_activity/home_screen/view/widgets/widgets.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  bool isProfile = true, isSettings = false, isEnrolls = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const PrimarySliverAppBar(
            title: 'Профиль',
          )
        ],
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: primaryPaddingHorizontal),
              child: Container(
                width: 328,
                height: 174,
                child: Stack(
                  children: [
                    Positioned(
                      top: 12,
                      child: Container(
                        width: 328,
                        decoration: BoxDecoration(
                          boxShadow: primaryBoxShadow,
                          borderRadius: primaryInputBorderRadius,
                          color: primaryGreyColor.shade500,
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsets.all(primaryPaddingHorizontal),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                radius: 40,
                                foregroundImage: AssetImage(
                                  'assets/images/media/user_picture.png',
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Text(
                                    'Владислав Крыжовский',
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 12,
                      child: Container(
                        height: 24,
                        decoration: BoxDecoration(
                          color: primaryPinkColor.shade200,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5),
                          ),
                          boxShadow: primaryBoxShadow,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: primaryPaddingHorizontal / 2,
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/logo.svg',
                                  color: primaryWhiteColor,
                                  width: 9,
                                  height: 12,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '1',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .copyWith(
                                          color: primaryWhiteColor,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: primaryPaddingHorizontal + 2),
              child: Container(
                width: double.infinity,
                height: 32,
                decoration: BoxDecoration(
                  color: primaryGreyColor.shade500,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(9),
                  ),
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isProfile = true;
                          isSettings = false;
                          isEnrolls = false;
                        });
                      },
                      child: AnimatedContainer(
                        width: 108,
                        height: 28,
                        duration: const Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                          color: isProfile
                              ? Theme.of(context).primaryColor
                              : primaryGreyColor.shade500,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(7),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Профиль',
                            style: Theme.of(context)
                                .primaryTextTheme
                                .labelLarge!
                                .copyWith(
                                    color: isProfile
                                        ? primaryWhiteColor
                                        : primaryGreyColor),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isProfile = false;
                          isSettings = true;
                          isEnrolls = false;
                        });
                      },
                      child: AnimatedContainer(
                        width: 108,
                        height: 28,
                        duration: const Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                          color: isSettings
                              ? Theme.of(context).primaryColor
                              : primaryGreyColor.shade500,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(7),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Настройки',
                            style: Theme.of(context)
                                .primaryTextTheme
                                .labelLarge!
                                .copyWith(
                                    color: isSettings
                                        ? primaryWhiteColor
                                        : primaryGreyColor),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isProfile = false;
                          isSettings = false;
                          isEnrolls = true;
                        });
                      },
                      child: AnimatedContainer(
                        width: 108,
                        height: 28,
                        duration: const Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                          color: isEnrolls
                              ? Theme.of(context).primaryColor
                              : primaryGreyColor.shade500,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(7),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Записи',
                            style: Theme.of(context)
                                .primaryTextTheme
                                .labelLarge!
                                .copyWith(
                                    color: isEnrolls
                                        ? primaryWhiteColor
                                        : primaryGreyColor),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            if (isProfile)
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: primaryPaddingHorizontal),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('/friends_list');
                          },
                          child: Container(
                            width: 160,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: primaryInputBorderRadius,
                                boxShadow: primaryBoxShadow,
                                color: primaryGreyColor.shade500),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 12, left: 16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Друзья',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: primaryGreenColor.shade100)),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/icons/user-alt-1.svg',
                                        color: primaryGreenColor.shade100,
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text('100',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color:
                                                  primaryGreenColor.shade100)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('/achievements');
                          },
                          child: Container(
                            width: 160,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: primaryInputBorderRadius,
                                boxShadow: primaryBoxShadow,
                                color: primaryGreyColor.shade500),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 12, left: 16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Достижения',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: primaryGreenColor.shade100)),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/icons/medal-alt.svg',
                                        color: primaryGreenColor.shade100,
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text('46',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color:
                                                  primaryGreenColor.shade100)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: primaryPaddingHorizontal),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 230,
                          height: 70,
                          decoration: const BoxDecoration(
                              borderRadius: primaryInputBorderRadius,
                              color: primaryGreenColor),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: primaryPaddingHorizontal,
                                vertical: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Количество баллов',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: primaryWhiteColor)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      CupertinoIcons.star_fill,
                                      color: primaryWhiteColor,
                                      size: 16,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text('2433',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: primaryWhiteColor)),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                duration: Duration(milliseconds: 613),
                                backgroundColor: Color(0xFF0077FF),
                                content: Center(
                                  child: Text(
                                    'Пригласить друзей в ВК',
                                    style: TextStyle(
                                        color: primaryWhiteColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ),
                            );
                          },
                          child: Container(
                            width: 90,
                            height: 70,
                            decoration: const BoxDecoration(
                                borderRadius: primaryInputBorderRadius,
                                color: Color(0xFF0077FF)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, left: 10, right: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/vk.svg',
                                    color: primaryWhiteColor,
                                  ),
                                  const Text('Пригласить\nдрузей',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: primaryWhiteColor)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: primaryPaddingHorizontal),
                    child: SizedBox(
                      height: 45,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              primaryPinkColor.shade100),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              duration: const Duration(milliseconds: 613),
                              backgroundColor: primaryPinkColor.shade100,
                              content: const Center(
                                child: Text(
                                  'Избранное',
                                  style: TextStyle(
                                      color: primaryWhiteColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Избранное',
                              style: TextStyle(
                                  color: primaryWhiteColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(width: 5),
                            SvgPicture.asset(
                              'assets/icons/heart-alt-filled.svg',
                              color: primaryWhiteColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: primaryPaddingHorizontal),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Рейтинг по категориям',
                          style:
                              Theme.of(context).primaryTextTheme.headlineMedium,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 9.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: primaryPaddingHorizontal),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 76,
                          height: 65,
                          decoration: BoxDecoration(
                              borderRadius: primaryInputBorderRadius,
                              color: primaryWhiteColor,
                              boxShadow: primaryBoxShadow),
                          child: Padding(
                            padding: const EdgeInsets.all(
                                primaryPaddingHorizontal / 2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/category=dance.svg',
                                  width: 24,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      CupertinoIcons.star_fill,
                                      color: primaryGreenColor.shade200,
                                      size: 16,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text('613',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: primaryGreenColor.shade200)),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 76,
                          height: 65,
                          decoration: BoxDecoration(
                              borderRadius: primaryInputBorderRadius,
                              color: primaryWhiteColor,
                              boxShadow: primaryBoxShadow),
                          child: Padding(
                            padding: const EdgeInsets.all(
                                primaryPaddingHorizontal / 2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/category=music.svg',
                                  width: 24,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      CupertinoIcons.star_fill,
                                      color: primaryGreenColor,
                                      size: 16,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text('179',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: primaryGreenColor)),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 76,
                          height: 65,
                          decoration: BoxDecoration(
                              borderRadius: primaryInputBorderRadius,
                              color: primaryWhiteColor,
                              boxShadow: primaryBoxShadow),
                          child: Padding(
                            padding: const EdgeInsets.all(
                                primaryPaddingHorizontal / 2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/category=art.svg',
                                  width: 24,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      CupertinoIcons.star_fill,
                                      color: primaryPinkColor.shade100,
                                      size: 16,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text('545',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: primaryPinkColor.shade100)),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 76,
                          height: 65,
                          decoration: BoxDecoration(
                              borderRadius: primaryInputBorderRadius,
                              color: primaryWhiteColor,
                              boxShadow: primaryBoxShadow),
                          child: Padding(
                            padding: const EdgeInsets.all(
                                primaryPaddingHorizontal / 2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/category=theatre.svg',
                                  width: 24,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      CupertinoIcons.star_fill,
                                      color: primaryPurpleColor.shade200,
                                      size: 16,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text('987',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                primaryPurpleColor.shade200)),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: primaryPaddingHorizontal),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Топ друзей',
                          style: TextStyle(
                            fontSize: 20,
                            color: primaryBlackColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('/friends_list');
                          },
                          child: Text(
                            'Смотреть всех',
                            style: Theme.of(context)
                                .primaryTextTheme
                                .headlineMedium!
                                .copyWith(
                                  fontSize: 15,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/other_user_profile');
                    },
                    child: SizedBox(
                      height: 84,
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(
                                left: primaryPaddingHorizontal, bottom: 2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                      'assets/images/media/user_picture.png'),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Виктор',
                                  style: TextStyle(
                                    color: primaryBlackColor,
                                    fontFamily: 'DeeDee',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: primaryPaddingHorizontal, bottom: 2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                      'assets/images/media/user_picture.png'),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Александр',
                                  style: TextStyle(
                                    color: primaryBlackColor,
                                    fontFamily: 'DeeDee',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: primaryPaddingHorizontal, bottom: 2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                      'assets/images/media/user_picture.png'),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Юрий',
                                  style: TextStyle(
                                    color: primaryBlackColor,
                                    fontFamily: 'DeeDee',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: primaryPaddingHorizontal, bottom: 2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                      'assets/images/media/user_picture.png'),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Владимир',
                                  style: TextStyle(
                                    color: primaryBlackColor,
                                    fontFamily: 'DeeDee',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: primaryPaddingHorizontal, bottom: 2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                      'assets/images/media/user_picture.png'),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Василий',
                                  style: TextStyle(
                                    color: primaryBlackColor,
                                    fontFamily: 'DeeDee',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: primaryPaddingHorizontal, bottom: 2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                      'assets/images/media/user_picture.png'),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Аркадий',
                                  style: TextStyle(
                                    color: primaryBlackColor,
                                    fontFamily: 'DeeDee',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: primaryPaddingHorizontal),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Мои курсы',
                          style: TextStyle(
                            fontSize: 20,
                            color: primaryBlackColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('/courses_list');
                          },
                          child: Text(
                            'Смотреть все',
                            style: Theme.of(context)
                                .primaryTextTheme
                                .headlineMedium!
                                .copyWith(
                                  fontSize: 15,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 122,
                    child: ListView(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('/course_detail');
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: primaryPaddingHorizontal, bottom: 2),
                              child: Container(
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/media/course_arts.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    boxShadow: primaryBoxShadow,
                                    borderRadius: primaryInputBorderRadius),
                                child: Container(
                                  width: 220,
                                  height: 120,
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.45),
                                      borderRadius: primaryInputBorderRadius),
                                  child: Padding(
                                    padding: const EdgeInsets.all(
                                        primaryPaddingHorizontal),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            const Text(
                                              'Русская живопись',
                                              style: TextStyle(
                                                color: primaryWhiteColor,
                                                fontSize: 14,
                                                fontFamily: 'DeeDee',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color:
                                                      primaryPinkColor.shade200,
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(
                                                              5.0))),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8,
                                                        vertical: 1),
                                                child: Text(
                                                  'Искусство',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelMedium!
                                                      .copyWith(
                                                          color:
                                                              primaryWhiteColor,
                                                          fontSize: 10),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const Text(
                                          '6 уроков',
                                          style: TextStyle(
                                            color: primaryWhiteColor,
                                            fontSize: 12,
                                            fontFamily: 'DeeDee',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        const SizedBox(height: 2),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              'Пройдено 4/6 уроков',
                                              style: TextStyle(
                                                color: primaryWhiteColor,
                                                fontSize: 14,
                                                fontFamily: 'DeeDee',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Icon(
                                              CupertinoIcons.play_circle_fill,
                                              color: primaryWhiteColor,
                                              size: 32,
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        LinearProgressIndicator(
                                          color: primaryGreenColor
                                              .withOpacity(0.6),
                                          backgroundColor: primaryGreenColor
                                              .shade200
                                              .withOpacity(0.6),
                                          value: 4 / 6,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('/course_detail');
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: primaryPaddingHorizontal, bottom: 2),
                              child: Container(
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/media/course_balet.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    boxShadow: primaryBoxShadow,
                                    borderRadius: primaryInputBorderRadius),
                                child: Container(
                                  width: 220,
                                  height: 120,
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.45),
                                      borderRadius: primaryInputBorderRadius),
                                  child: Padding(
                                    padding: const EdgeInsets.all(
                                        primaryPaddingHorizontal),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            const Text(
                                              'Русский балет',
                                              style: TextStyle(
                                                color: primaryWhiteColor,
                                                fontSize: 14,
                                                fontFamily: 'DeeDee',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color:
                                                      primaryPinkColor.shade200,
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(
                                                              5.0))),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8,
                                                        vertical: 1),
                                                child: Text(
                                                  'Искусство',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelMedium!
                                                      .copyWith(
                                                          color:
                                                              primaryWhiteColor,
                                                          fontSize: 10),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const Text(
                                          '6 уроков',
                                          style: TextStyle(
                                            color: primaryWhiteColor,
                                            fontSize: 12,
                                            fontFamily: 'DeeDee',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        const SizedBox(height: 2),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              'Пройдено 2/6 уроков',
                                              style: TextStyle(
                                                color: primaryWhiteColor,
                                                fontSize: 14,
                                                fontFamily: 'DeeDee',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Icon(
                                              CupertinoIcons.play_circle_fill,
                                              color: primaryWhiteColor,
                                              size: 32,
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        LinearProgressIndicator(
                                          color: primaryGreenColor
                                              .withOpacity(0.6),
                                          backgroundColor: primaryGreenColor
                                              .shade200
                                              .withOpacity(0.6),
                                          value: 2 / 6,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                        ]),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: primaryPaddingHorizontal),
                    child: SizedBox(
                      height: 45,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              duration: Duration(milliseconds: 613),
                              backgroundColor: primaryGreenColor,
                              content: Center(
                                child: Text(
                                  'Переход в NashStore',
                                  style: TextStyle(
                                      color: primaryWhiteColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ),
                          );
                        },
                        child: const Text(
                          'Оставить отзыв на приложение',
                          style: TextStyle(
                              color: primaryWhiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            if (isSettings)
              const Center(
                child: Text('Настройки профиля'),
              ),
            if (isEnrolls)
              const Center(
                child: Text('Информация про записи на курсы и программы'),
              ),
            const SizedBox(height: 48),
          ],
        ),
      ),
    );
  }
}
