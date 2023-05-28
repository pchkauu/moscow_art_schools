import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mshi/core/ui/ui.dart';
import 'package:mshi/features/main_activity/home_screen/view/widgets/widgets.dart';

class RaitingScreen extends StatelessWidget {
  const RaitingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const PrimarySliverAppBar(
            title: 'Рейтинг',
          )
        ],
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const UserRaitingCard(),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: primaryPaddingHorizontal),
              child: TextFormField(
                decoration: primaryInputDecoration.copyWith(
                    hintText: 'Поиск', suffixIcon: const Icon(Icons.search)),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 32,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: primaryPaddingHorizontal, bottom: 2),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: primaryGreenColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.75),
                        ),
                        boxShadow: primaryBoxShadow,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: primaryPaddingHorizontal,
                        ),
                        child: Center(
                          child: Text(
                            'Все',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                    color: primaryWhiteColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: primaryPaddingHorizontal, bottom: 2),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: primaryWhiteColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.75),
                        ),
                        boxShadow: primaryBoxShadow,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: primaryPaddingHorizontal,
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Театр',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                        color: primaryBlackColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SvgPicture.asset(
                                  'assets/images/search_bar/theatr.svg'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: primaryPaddingHorizontal, bottom: 2),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: primaryWhiteColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.75),
                        ),
                        boxShadow: primaryBoxShadow,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: primaryPaddingHorizontal,
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Танцы',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                        color: primaryBlackColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SvgPicture.asset(
                                  'assets/images/search_bar/dance.svg'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: primaryPaddingHorizontal, bottom: 2),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: primaryWhiteColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.75),
                        ),
                        boxShadow: primaryBoxShadow,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: primaryPaddingHorizontal,
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Музыка',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                        color: primaryBlackColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SvgPicture.asset(
                                  'assets/images/search_bar/music.svg'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: primaryPaddingHorizontal, bottom: 2),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: primaryWhiteColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.75),
                        ),
                        boxShadow: primaryBoxShadow,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: primaryPaddingHorizontal,
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Изобразительное искусство',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                        color: primaryBlackColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SvgPicture.asset(
                                  'assets/images/search_bar/painting.svg'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: primaryPaddingHorizontal),
              child: Text(
                'Общий рейтинг',
                style: Theme.of(context)
                    .primaryTextTheme
                    .headlineMedium!
                    .copyWith(color: primaryGreenColor, fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: primaryPaddingHorizontal),
              child: Container(
                width: 328,
                height: 100,
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                radius: 25,
                                foregroundImage: AssetImage(
                                  'assets/images/media/user_picture.png',
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Владислав Крыжовский',
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SvgPicture.asset(
                                          'assets/icons/category=music.svg'),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      const Text('179',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: primaryGreenColor)),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      SvgPicture.asset(
                                          'assets/icons/category=dance.svg'),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text('613',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color:
                                                  primaryGreenColor.shade200)),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      SvgPicture.asset(
                                          'assets/icons/category=art.svg'),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text('987',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color:
                                                  primaryPinkColor.shade100)),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      SvgPicture.asset(
                                          'assets/icons/category=theatre.svg'),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text('545',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color:
                                                  primaryPurpleColor.shade200)),
                                      const SizedBox(
                                        width: 8,
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
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: primaryPaddingHorizontal),
              child: Container(
                width: 328,
                height: 100,
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                radius: 25,
                                foregroundImage: AssetImage(
                                  'assets/images/media/user_picture.png',
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Мария Бутримова',
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SvgPicture.asset(
                                          'assets/icons/category=music.svg'),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      const Text('179',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: primaryGreenColor)),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      SvgPicture.asset(
                                          'assets/icons/category=dance.svg'),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text('613',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color:
                                                  primaryGreenColor.shade200)),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      SvgPicture.asset(
                                          'assets/icons/category=art.svg'),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text('987',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color:
                                                  primaryPinkColor.shade100)),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      SvgPicture.asset(
                                          'assets/icons/category=theatre.svg'),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text('545',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color:
                                                  primaryPurpleColor.shade200)),
                                      const SizedBox(
                                        width: 8,
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
                                  '2',
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
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: primaryPaddingHorizontal),
              child: Container(
                width: 328,
                height: 100,
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                radius: 25,
                                foregroundImage: AssetImage(
                                  'assets/images/media/user_picture.png',
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Александр Молчанов',
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SvgPicture.asset(
                                          'assets/icons/category=music.svg'),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      const Text('179',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: primaryGreenColor)),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      SvgPicture.asset(
                                          'assets/icons/category=dance.svg'),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text('613',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color:
                                                  primaryGreenColor.shade200)),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      SvgPicture.asset(
                                          'assets/icons/category=art.svg'),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text('987',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color:
                                                  primaryPinkColor.shade100)),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      SvgPicture.asset(
                                          'assets/icons/category=theatre.svg'),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text('545',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color:
                                                  primaryPurpleColor.shade200)),
                                      const SizedBox(
                                        width: 8,
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
                                  '3',
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
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: primaryPaddingHorizontal),
              child: Container(
                width: 328,
                height: 100,
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                radius: 25,
                                foregroundImage: AssetImage(
                                  'assets/images/media/user_picture.png',
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Юрий Панадий',
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SvgPicture.asset(
                                          'assets/icons/category=music.svg'),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      const Text('179',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: primaryGreenColor)),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      SvgPicture.asset(
                                          'assets/icons/category=dance.svg'),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text('613',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color:
                                                  primaryGreenColor.shade200)),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      SvgPicture.asset(
                                          'assets/icons/category=art.svg'),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text('987',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color:
                                                  primaryPinkColor.shade100)),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      SvgPicture.asset(
                                          'assets/icons/category=theatre.svg'),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text('545',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color:
                                                  primaryPurpleColor.shade200)),
                                      const SizedBox(
                                        width: 8,
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
                                  '4',
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
          ],
        ),
      ),
    );
  }
}

class UserRaitingCard extends StatelessWidget {
  const UserRaitingCard({
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
                  'assets/images/backgrounds/raiting_page_user_card_background.png'),
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
                      'Владислав,\nВаше место в рейтинге',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: primaryWhiteColor),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(CupertinoIcons.star_fill, size: 22),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          '1',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                  color: primaryWhiteColor),
                        )
                      ],
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
