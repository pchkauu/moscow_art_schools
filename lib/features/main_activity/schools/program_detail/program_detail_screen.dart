import 'package:flutter/material.dart';
import 'package:mshi/core/ui/ui.dart';
import 'package:mshi/features/main_activity/home_screen/view/widgets/widgets.dart';

class ProgramDetailScreen extends StatefulWidget {
  const ProgramDetailScreen({
    super.key,
  });

  @override
  State<ProgramDetailScreen> createState() => _ProgramDetailScreenState();
}

class _ProgramDetailScreenState extends State<ProgramDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const PrimarySliverAppBar(
            title: 'О програме',
          )
        ],
        body: const ProgramDetailBody(),
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
                    'Вы были успешно записаны',
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
            'Записаться',
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

class ProgramDetailBody extends StatelessWidget {
  const ProgramDetailBody({
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
          child: Container(
            decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(
                      'assets/images/backgrounds/program_card_background.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: primaryInputBorderRadius,
                boxShadow: primaryBoxShadow),
            child: Padding(
              padding: const EdgeInsets.all(primaryPaddingHorizontal),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Элементарная\nтеория музыки',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: primaryBlackColor, fontSize: 24),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '2 года',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: primaryBlackColor, fontSize: 16),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    '148 занятий',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: primaryBlackColor, fontSize: 16),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Работа в группах',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: primaryBlackColor, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24,
              ),
              Text(
                'О программе',
                style: theme.textTheme.headlineSmall!.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: primaryBlackColor),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Программа предназначена для всех, кто хочет узнать больше о музыке. Она позволит вам понимать основные музыкальные термины и элементы, необходимые для того, чтобы лучше разбираться в музыке. Вы получите знания о гармонии, мелодии, ритме и других музыкальных элементах.',
                style: theme.textTheme.headlineSmall!
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Необходимые знания',
                style: theme.textTheme.headlineSmall!.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: primaryBlackColor),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Данная программа не требует от вас никаких предварительных знаний в музыке, предполагается, медленное и постепенное знакомство с каждым элементом и термином.',
                style: theme.textTheme.headlineSmall!
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Для кого программа',
                style: theme.textTheme.headlineSmall!.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: primaryBlackColor),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Предназначена для всех, независимо от возраста, уровня подготовки и целей. Рассчитана на новичков, которые только начинают своё знакомство с музыкой или желают освежить свои знания. Кроме того, подходит для тех, кто желает понимать музыку более глубоко.',
                style: theme.textTheme.headlineSmall!
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Длительность',
                style: theme.textTheme.headlineSmall!.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: primaryBlackColor),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Учебная программа «Элементарная теория музыки» рассчитана на 2 года и проходит в мелкогрупповом формате',
                style: theme.textTheme.headlineSmall!
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Результаты',
                style: theme.textTheme.headlineSmall!.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: primaryBlackColor),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Вы научитесь различать музыкальные термины и элементы, знать основные гармонические отношения и прочие аспекты музыки. Также вы получите практические навыки, которые помогут вам лучше понимать музыку и оценивать её качество и смысл.',
                style: theme.textTheme.headlineSmall!
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
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
                        backgroundImage:
                            AssetImage('assets/images/media/user_picture.png'),
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
                        backgroundImage:
                            AssetImage('assets/images/media/user_picture.png'),
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
                        backgroundImage:
                            AssetImage('assets/images/media/user_picture.png'),
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
                        backgroundImage:
                            AssetImage('assets/images/media/user_picture.png'),
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
                        backgroundImage:
                            AssetImage('assets/images/media/user_picture.png'),
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
                        backgroundImage:
                            AssetImage('assets/images/media/user_picture.png'),
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
          padding: EdgeInsets.symmetric(horizontal: primaryPaddingHorizontal),
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
                      image: AssetImage('assets/images/media/teacher_1.jpg'),
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
                          color: const Color(0xFF6EB17E).withOpacity(0.8),
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
                      image: AssetImage('assets/images/media/teacher_2.jpg'),
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
                          color: const Color(0xFF6EB17E).withOpacity(0.8),
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
          height: 80,
        ),
      ],
    );
  }
}
