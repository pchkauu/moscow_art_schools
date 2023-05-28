import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mshi/core/ui/ui.dart';
import 'package:mshi/features/main_activity/home_screen/view/widgets/widgets.dart';

class CoursesListScreen extends StatefulWidget {
  const CoursesListScreen({super.key});

  @override
  State<CoursesListScreen> createState() => _CoursesListScreenState();
}

class _CoursesListScreenState extends State<CoursesListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const PrimarySliverAppBar(
            title: 'Курсы',
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
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: primaryPaddingHorizontal),
          child: Text(
            'Мои курсы',
            style:
                theme.primaryTextTheme.headlineMedium!.copyWith(fontSize: 24),
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
                          padding:
                              const EdgeInsets.all(primaryPaddingHorizontal),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
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
                                        color: primaryPinkColor.shade200,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5.0))),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 1),
                                      child: Text(
                                        'Искусство',
                                        style: theme.textTheme.labelMedium!
                                            .copyWith(
                                                color: primaryWhiteColor,
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
                                crossAxisAlignment: CrossAxisAlignment.end,
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
                                color: primaryGreenColor.withOpacity(0.6),
                                backgroundColor:
                                    primaryGreenColor.shade200.withOpacity(0.6),
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
                          padding:
                              const EdgeInsets.all(primaryPaddingHorizontal),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
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
                                        color: primaryPinkColor.shade200,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5.0))),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 1),
                                      child: Text(
                                        'Искусство',
                                        style: theme.textTheme.labelMedium!
                                            .copyWith(
                                                color: primaryWhiteColor,
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
                                crossAxisAlignment: CrossAxisAlignment.end,
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
                                color: primaryGreenColor.withOpacity(0.6),
                                backgroundColor:
                                    primaryGreenColor.shade200.withOpacity(0.6),
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
          padding:
              const EdgeInsets.symmetric(horizontal: primaryPaddingHorizontal),
          child: Text(
            'Популярные курсы',
            style:
                theme.primaryTextTheme.headlineMedium!.copyWith(fontSize: 24),
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
                                'assets/images/media/course_music.png'),
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
                          padding:
                              const EdgeInsets.all(primaryPaddingHorizontal),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Text(
                                    'Русская музыка',
                                    style: TextStyle(
                                      color: primaryWhiteColor,
                                      fontSize: 14,
                                      fontFamily: 'DeeDee',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                        color: primaryGreenColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.0))),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 1),
                                      child: Text(
                                        'Музыка',
                                        style: theme.textTheme.labelMedium!
                                            .copyWith(
                                                color: primaryWhiteColor,
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
                                '10 уроков',
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
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    ' ',
                                    style: TextStyle(
                                      color: primaryWhiteColor,
                                      fontSize: 14,
                                      fontFamily: 'DeeDee',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Icon(
                                    CupertinoIcons.add_circled_solid,
                                    color: primaryWhiteColor,
                                    size: 32,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 8,
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
                                'assets/images/media/course_theatr.png'),
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
                          padding:
                              const EdgeInsets.all(primaryPaddingHorizontal),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Text(
                                    'Русский театр',
                                    style: TextStyle(
                                      color: primaryWhiteColor,
                                      fontSize: 14,
                                      fontFamily: 'DeeDee',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryPurpleColor.shade200,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5.0))),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 1),
                                      child: Text(
                                        'Театр',
                                        style: theme.textTheme.labelMedium!
                                            .copyWith(
                                                color: primaryWhiteColor,
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
                                '10 уроков',
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
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    ' ',
                                    style: TextStyle(
                                      color: primaryWhiteColor,
                                      fontSize: 14,
                                      fontFamily: 'DeeDee',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Icon(
                                    CupertinoIcons.add_circled_solid,
                                    color: primaryWhiteColor,
                                    size: 32,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 8,
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
          height: 24,
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: primaryPaddingHorizontal),
          child: Text(
            'Каталог',
            style:
                theme.primaryTextTheme.headlineMedium!.copyWith(fontSize: 24),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: primaryPaddingHorizontal),
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
                        style: theme.textTheme.labelMedium!.copyWith(
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
                            style: theme.textTheme.labelMedium!.copyWith(
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
                            style: theme.textTheme.labelMedium!.copyWith(
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
                            style: theme.textTheme.labelMedium!.copyWith(
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
                            style: theme.textTheme.labelMedium!.copyWith(
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
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0, right: 16.0, left: 16.0),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  spreadRadius: 0,
                  blurRadius: 1,
                  offset: const Offset(0, 1.0), // changes position of shadow
                ),
              ],
              color: primaryWhiteColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            width: 328,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 328,
                  height: 170,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/media/course_arts.png',
                        ),
                        alignment: Alignment.center,
                        fit: BoxFit.cover),
                    borderRadius: primaryInputBorderRadius,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: primaryGreenColor.shade200,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5.0))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 4),
                            child: Text(
                              'Живопись',
                              style: theme.textTheme.labelMedium!.copyWith(
                                  color: primaryWhiteColor, fontSize: 12),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: primaryPaddingHorizontal),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Русская живопись',
                        style: theme.textTheme.titleMedium!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: primaryBlackColor),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Погрузитесь в увлекательный мир русской живописи. Научитесь отличать айвазовского от репина, левитана от репина',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall!.copyWith(
                          fontSize: 12,
                        ),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('24 урока',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: primaryGreenColor.shade200)),
                          Icon(
                            Icons.share,
                            color: primaryGreenColor.shade200,
                            size: 16,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0, right: 16.0, left: 16.0),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  spreadRadius: 0,
                  blurRadius: 1,
                  offset: const Offset(0, 1.0), // changes position of shadow
                ),
              ],
              color: primaryWhiteColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            width: 328,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 328,
                  height: 170,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/media/course_arts.png',
                        ),
                        alignment: Alignment.center,
                        fit: BoxFit.cover),
                    borderRadius: primaryInputBorderRadius,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: primaryGreenColor.shade200,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5.0))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 4),
                            child: Text(
                              'Живопись',
                              style: theme.textTheme.labelMedium!.copyWith(
                                  color: primaryWhiteColor, fontSize: 12),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: primaryPaddingHorizontal),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Русская живопись',
                        style: theme.textTheme.titleMedium!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: primaryBlackColor),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Погрузитесь в увлекательный мир русской живописи. Научитесь отличать айвазовского от репина, левитана от репина',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall!.copyWith(
                          fontSize: 12,
                        ),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('24 урока',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: primaryGreenColor.shade200)),
                          Icon(
                            Icons.share,
                            color: primaryGreenColor.shade200,
                            size: 16,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                    ],
                  ),
                )
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
