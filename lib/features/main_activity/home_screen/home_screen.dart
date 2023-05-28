import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mshi/core/ui/ui.dart';
import 'package:mshi/features/main_activity/home_screen/view/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const PrimarySliverAppBar(
            title: 'Главная',
          )
        ],
        body: const HomeList(),
      ),
    );
  }
}

class HomeList extends StatelessWidget {
  const HomeList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        const UserWelcomeCard(),
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: primaryPaddingHorizontal),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Школы для вас',
                style: theme.primaryTextTheme.headlineMedium,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/schools');
                },
                child: Text(
                  'Смотреть все',
                  style: theme.primaryTextTheme.headlineMedium!
                      .copyWith(fontSize: 15),
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
            Navigator.of(context).pushNamed('/school_detail');
          },
          child: SizedBox(
            height: 262,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: SizedBox(
                    height: 260,
                    width: 260,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          child: Container(
                            width: 260,
                            height: 147,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/media/school_2.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 147,
                          child: Container(
                            width: 260,
                            height: 113,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: primaryBoxShadow,
                              color: primaryWhiteColor,
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Text(
                                    'ГБУДО г. Москвы ДШИ \"Юность\"',
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    '24 программы',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Divider(
                                    height: 1,
                                    thickness: 1,
                                    color: primaryGreyColor.shade300,
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Ул. Композиторская 45',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium!
                                            .copyWith(
                                                color:
                                                    primaryGreenColor.shade200),
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            'assets/icons/star.svg',
                                            color: const Color(0xFFFFD25F),
                                          ),
                                          Text(
                                            '4.8',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge!
                                                .copyWith(
                                                  color:
                                                      primaryGreyColor.shade100,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 123,
                            left: 204,
                            child: CircleAvatar(
                              backgroundColor: primaryWhiteColor,
                              radius: 20,
                              child: IconButton(
                                color: primaryWhiteColor,
                                disabledColor: primaryWhiteColor,
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  'assets/icons/heart-alt.svg',
                                  color: primaryPinkColor.shade100,
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: SizedBox(
                    height: 260,
                    width: 260,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          child: Container(
                            width: 260,
                            height: 147,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/media/school_1.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 147,
                          child: Container(
                            width: 260,
                            height: 113,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: primaryBoxShadow,
                              color: primaryWhiteColor,
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Text(
                                    'ГБУДО г. Москвы\n\«ДМШ им. К.Н. Игумнова\»',
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    '24 программы',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Divider(
                                    height: 1,
                                    thickness: 1,
                                    color: primaryGreyColor.shade300,
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Ул. Композиторская 45',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium!
                                            .copyWith(
                                                color:
                                                    primaryGreenColor.shade200),
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            'assets/icons/star.svg',
                                            color: const Color(0xFFFFD25F),
                                          ),
                                          Text(
                                            '4.8',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge!
                                                .copyWith(
                                                  color:
                                                      primaryGreyColor.shade100,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 123,
                            left: 204,
                            child: CircleAvatar(
                              backgroundColor: primaryWhiteColor,
                              radius: 20,
                              child: IconButton(
                                color: primaryWhiteColor,
                                disabledColor: primaryWhiteColor,
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  'assets/icons/heart-alt-filled.svg',
                                  color: primaryPinkColor.shade100,
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: primaryPaddingHorizontal),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Курсы для вас',
                style: theme.primaryTextTheme.headlineMedium,
              ),
              Text(
                'Смотреть все',
                style: theme.primaryTextTheme.headlineMedium!
                    .copyWith(fontSize: 15),
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
                Padding(
                  padding: const EdgeInsets.only(
                      left: primaryPaddingHorizontal, bottom: 2),
                  child: Container(
                    width: 220,
                    height: 120,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                              'assets/images/backgrounds/home_page_courses_background.png'),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: primaryBoxShadow,
                        borderRadius: primaryInputBorderRadius),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, top: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Классика\nрусской живописи',
                            style: TextStyle(
                              color: primaryBlackColor,
                              fontSize: 16,
                              fontFamily: 'DeeDee',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            '15 уроков',
                            style: TextStyle(
                              color: primaryGreyColor.shade100,
                              fontSize: 12,
                              fontFamily: 'DeeDee',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: primaryPaddingHorizontal, bottom: 2),
                  child: Container(
                    width: 220,
                    height: 120,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                              'assets/images/backgrounds/home_page_courses_background.png'),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: primaryBoxShadow,
                        borderRadius: primaryInputBorderRadius),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, top: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Классика\nрусской музыки',
                            style: TextStyle(
                              color: primaryBlackColor,
                              fontSize: 16,
                              fontFamily: 'DeeDee',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            '12 уроков',
                            style: TextStyle(
                              color: primaryGreyColor.shade100,
                              fontSize: 12,
                              fontFamily: 'DeeDee',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
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
          height: 24,
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: primaryPaddingHorizontal),
          child: Text(
            'Подробнее о МШИ',
            style: theme.primaryTextTheme.headlineMedium,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/schools');
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: primaryPaddingHorizontal),
            child: AspectRatio(
              aspectRatio: 328 / 108,
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/backgrounds/mshi_banner.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: primaryInputBorderRadius),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/schools');
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: primaryPaddingHorizontal),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      width: 156,
                      height: 156,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                              'assets/images/backgrounds/about_1.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: primaryInputBorderRadius,
                        boxShadow: primaryBoxShadow,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 156,
                      height: 156,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                              'assets/images/backgrounds/about_2.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: primaryInputBorderRadius,
                        boxShadow: primaryBoxShadow,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Container(
                      width: 156,
                      height: 156,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                              'assets/images/backgrounds/about_3.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: primaryInputBorderRadius,
                        boxShadow: primaryBoxShadow,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 156,
                      height: 156,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                              'assets/images/backgrounds/about_4.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: primaryInputBorderRadius,
                        boxShadow: primaryBoxShadow,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }
}

class UserWelcomeCard extends StatelessWidget {
  const UserWelcomeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: primaryPaddingHorizontal),
      child: AspectRatio(
        aspectRatio: 328 / 108,
        child: Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(
                  'assets/images/backgrounds/home_page_user_card_background.png'),
              fit: BoxFit.cover,
            ),
            boxShadow: primaryBoxShadow,
            borderRadius: primaryInputBorderRadius,
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: primaryPaddingHorizontal, vertical: 24),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Добрый день,\nВладислав',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: primaryWhiteColor),
                    ),
                    const CircleAvatar(
                      radius: 30,
                      foregroundImage: AssetImage(
                        'assets/images/media/user_picture.png',
                      ),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
