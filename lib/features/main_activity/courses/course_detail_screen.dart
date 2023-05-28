import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mshi/core/ui/ui.dart';
import 'package:mshi/features/main_activity/home_screen/view/widgets/widgets.dart';

class CourseDetailScreen extends StatefulWidget {
  const CourseDetailScreen({super.key});

  @override
  State<CourseDetailScreen> createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const PrimarySliverAppBar(
            title: 'Курс',
          )
        ],
        body: const SchoolDetailBody(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        height: 45,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                duration: Duration(milliseconds: 1226),
                backgroundColor: primaryGreenColor,
                content: Center(
                  child: Text(
                    'Курс открыт',
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
            'Оплатить / открыть',
            style: TextStyle(
                color: primaryWhiteColor,
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}

class SchoolDetailBody extends StatefulWidget {
  const SchoolDetailBody({
    super.key,
  });

  @override
  State<SchoolDetailBody> createState() => _SchoolDetailBodyState();
}

class _SchoolDetailBodyState extends State<SchoolDetailBody> {
  bool isAbout = true, isPrograms = false;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: primaryPaddingHorizontal),
          child: NewsDetailHeaderImage(),
        ),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: primaryPaddingHorizontal),
          child: Text(
            'Русский балет',
            style: theme.textTheme.headlineSmall!
                .copyWith(fontSize: 20, fontWeight: FontWeight.w400),
          ),
        ),
        const SizedBox(
          height: 16,
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
                      isAbout = true;
                      isPrograms = false;
                    });
                  },
                  child: AnimatedContainer(
                    width: 162,
                    height: 28,
                    duration: const Duration(milliseconds: 300),
                    decoration: BoxDecoration(
                      color: isAbout
                          ? theme.primaryColor
                          : primaryGreyColor.shade500,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(7),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'О курсе',
                        style: theme.primaryTextTheme.labelLarge!.copyWith(
                            color:
                                isAbout ? primaryWhiteColor : primaryGreyColor),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isAbout = false;
                      isPrograms = true;
                    });
                  },
                  child: AnimatedContainer(
                    width: 162,
                    height: 28,
                    duration: const Duration(milliseconds: 300),
                    decoration: BoxDecoration(
                      color: isPrograms
                          ? theme.primaryColor
                          : primaryGreyColor.shade500,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(7),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Модули',
                        style: theme.primaryTextTheme.labelLarge!.copyWith(
                            color: isPrograms
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
          height: 16,
        ),
        isAbout
            ? AnimatedContainer(
                duration: const Duration(milliseconds: 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: primaryPaddingHorizontal),
                      child: Container(
                        decoration: BoxDecoration(
                            color: primaryGreyColor.shade500,
                            boxShadow: primaryBoxShadow,
                            borderRadius: primaryInputBorderRadius),
                        child: const Padding(
                          padding: EdgeInsets.all(primaryPaddingHorizontal),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  CupertinoIcons.info,
                                  color: primaryBlackColor,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  '6 уроков',
                                  style: TextStyle(
                                      color: primaryBlackColor,
                                      fontSize: 14,
                                      fontFamily: 'DeeDee',
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  CupertinoIcons.timer,
                                  color: primaryBlackColor,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  '25 минут',
                                  style: TextStyle(
                                      color: primaryBlackColor,
                                      fontSize: 14,
                                      fontFamily: 'DeeDee',
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            duration: Duration(milliseconds: 1226),
                            backgroundColor: Colors.amber,
                            content: Center(
                              child: Text(
                                'Отзывы о курсе',
                                style: TextStyle(
                                    color: primaryWhiteColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: primaryPaddingHorizontal),
                        child: Container(
                          decoration: BoxDecoration(
                              color: primaryGreyColor.shade500,
                              boxShadow: primaryBoxShadow,
                              borderRadius: primaryInputBorderRadius),
                          child: const Padding(
                            padding: EdgeInsets.all(primaryPaddingHorizontal),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Средняя оценка курса',
                                    style: TextStyle(
                                        color: primaryBlackColor,
                                        fontSize: 14,
                                        fontFamily: 'DeeDee',
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    CupertinoIcons.star_fill,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    '5.0',
                                    style: TextStyle(
                                        color: primaryBlackColor,
                                        fontSize: 14,
                                        fontFamily: 'DeeDee',
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: primaryPaddingHorizontal),
                      child: Text(
                        'О курсе',
                        style: theme.textTheme.headlineSmall!.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: primaryBlackColor),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: primaryPaddingHorizontal),
                      child: Text(
                        'Русский балет — это онлайн-курс, который познакомит вас с историей и основами техники русского балета. Вы научитесь выполнять элементарные движения и комбинации, которые используются в этом жанре танца.\n\nКурс разработан для тех, кто никогда не занимался танцами, а также для тех, кто хочет усовершенствовать свои навыки в русском балете.',
                        style: theme.textTheme.headlineSmall!.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: primaryPaddingHorizontal),
                      child: Text(
                        'Необходимые знания',
                        style: theme.textTheme.headlineSmall!.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: primaryBlackColor),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: primaryPaddingHorizontal),
                      child: Text(
                        'Вы не нуждаетесь в предварительных знаниях или опыте в танцах. Однако, если у вас уже есть опыт в других видах танца, это может оказаться дополнительным преимуществом при обучении балету.',
                        style: theme.textTheme.headlineSmall!.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: primaryPaddingHorizontal),
                      child: Text(
                        'Для кого курс',
                        style: theme.textTheme.headlineSmall!.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: primaryBlackColor),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: primaryPaddingHorizontal),
                      child: Text(
                        'Курс рекомендуется для всех, кто хочет освоить основы техники балета, усовершенствовать свои навыки танца и познакомиться с историей танца. Курс подойдёт для тех, кто хочет заниматься танцами в качестве хобби, улучшить свою физическую форму или даже планирует связать свою карьеру с балетом.',
                        style: theme.textTheme.headlineSmall!.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w300),
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
                            'Студенты курса',
                            style: TextStyle(
                                fontSize: 20,
                                color: primaryBlackColor,
                                fontWeight: FontWeight.w400),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('/friends_list');
                            },
                            child: Text(
                              'Смотреть всех',
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
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: primaryPaddingHorizontal),
                      child: Text(
                        'Преподаватели',
                        style: TextStyle(
                            fontSize: 20,
                            color: primaryBlackColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/teacher_detail');
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: primaryPaddingHorizontal),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 156,
                              height: 200,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/media/teacher_1.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: primaryInputBorderRadius,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF6EB17E)
                                          .withOpacity(0.8),
                                      borderRadius: primaryInputBorderRadius,
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Кузнецова\nЕкатерина Сергеевна',
                                        style: TextStyle(
                                            color: primaryWhiteColor,
                                            fontFamily: 'DeeDee',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 156,
                              height: 200,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/media/teacher_2.jpg'),
                                  fit: BoxFit.cover,
                                  alignment: Alignment.topCenter,
                                ),
                                borderRadius: primaryInputBorderRadius,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF6EB17E)
                                          .withOpacity(0.8),
                                      borderRadius: primaryInputBorderRadius,
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Смирновка\nОльга Александровна',
                                        style: TextStyle(
                                            color: primaryWhiteColor,
                                            fontFamily: 'DeeDee',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              )
            : AnimatedContainer(
                duration: const Duration(
                  milliseconds: 1,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: primaryPaddingHorizontal),
                      child: Container(
                        decoration: BoxDecoration(
                            color: primaryGreyColor.shade500,
                            boxShadow: primaryBoxShadow,
                            borderRadius: primaryInputBorderRadius),
                        child: Padding(
                          padding:
                              const EdgeInsets.all(primaryPaddingHorizontal),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Текущий прогресс: 2/6',
                                  style: TextStyle(
                                      color: primaryBlackColor,
                                      fontSize: 16,
                                      fontFamily: 'DeeDee',
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                LinearProgressIndicator(
                                  color: primaryGreenColor.withOpacity(0.6),
                                  backgroundColor: primaryGreenColor.shade200
                                      .withOpacity(0.6),
                                  value: 2 / 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: primaryPaddingHorizontal),
                      child: Text(
                        'Список модулей',
                        style: theme.textTheme.headlineSmall!.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: primaryBlackColor),
                      ),
                    ),
                    const SizedBox(height: 16),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/course_module');
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: primaryPaddingHorizontal),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: primaryGreenColor,
                            borderRadius: primaryInputBorderRadius,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(primaryPaddingHorizontal),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '1.',
                                  style: TextStyle(
                                      color: primaryWhiteColor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(width: 8),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'История балета',
                                      style: TextStyle(
                                          color: primaryWhiteColor,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      'Пройдено 2/2    2 урока, 2 задания',
                                      style: TextStyle(
                                          color: primaryWhiteColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 5),
                                Icon(CupertinoIcons.sort_down_circle_fill,
                                    color: primaryWhiteColor, size: 32)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/course_module');
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: primaryPaddingHorizontal),
                        child: Container(
                          decoration: BoxDecoration(
                            color: primaryWhiteColor,
                            boxShadow: primaryBoxShadow,
                            borderRadius: primaryInputBorderRadius,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(primaryPaddingHorizontal),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '2.',
                                      style: TextStyle(
                                          color: primaryBlackColor,
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(width: 8),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Балет в России',
                                          style: TextStyle(
                                              color: primaryBlackColor,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          'Пройдено 1/4   2 урока, 2 задания',
                                          style: TextStyle(
                                              color: primaryBlackColor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 7),
                                    Icon(CupertinoIcons.sort_down_circle,
                                        color: primaryBlackColor, size: 32)
                                  ],
                                ),
                                SizedBox(height: 8),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 28),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '2.1 История становления',
                                        style: TextStyle(
                                            color: primaryGreenColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      SizedBox(height: 2),
                                      Text(
                                        '2.2 Выдающиеся деятели',
                                        style: TextStyle(
                                            color: primaryBlackColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ),
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
          height: 80,
        ),
      ],
    );
  }
}

class NewsDetailHeaderImage extends StatelessWidget {
  const NewsDetailHeaderImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 328 / 200,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/media/course_balet.png'),
              fit: BoxFit.cover),
          borderRadius: primaryInputBorderRadius,
        ),
      ),
    );
  }
}
