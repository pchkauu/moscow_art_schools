import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mshi/core/ui/ui.dart';
import 'package:mshi/features/main_activity/home_screen/view/widgets/widgets.dart';

class SchoolDetailScreen extends StatefulWidget {
  const SchoolDetailScreen({super.key});

  @override
  State<SchoolDetailScreen> createState() => _SchoolDetailScreenState();
}

class _SchoolDetailScreenState extends State<SchoolDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const PrimarySliverAppBar(
            title: 'О школе',
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

const String newsBody =
    'В настоящее время в школе обучается 400 учащихся на бюджетном отделении и 236 учащихся на внебюджетном. Многие из них принимают участие в городских и общероссийских конкурсах, смотрах, фестивалях. Среди преподавателей школы много ветеранов труда и воспитанников школы. Обучение ведётся по специальностям: фортепиано, скрипка, альт, виолончель, контрабас, арфа, флейта, кларнет, саксофон, труба, ударные инструменты, баян, аккордеон, гитара, гусли, домра, балалайка, клавесин, сольное академическое и хоровое пение.\n\nВ школе работают два хоровых коллектива, ансамбли скрипачей, ансамбль гусляров «Сказочка», ансамбль народных инструментов «Калинка», имеется дошкольная группа. В качестве факультативных предметов введены: дополнительный инструмент, элементарная теория музыки, основы музыкальной гармонии, аранжировка на синтезаторе. Школа живёт интенсивной творческой жизнью. Коллектив школы проводит ежегодный музыкальный фестиваль «Игумновские встречи». В уютном концертном зале школы проходят разнообразные музыкально-литературные вечера, встречи с известными музыкантами, которые с удовольствием выступают, а также проводят свои мастер-классы. С 2006 года школа проводит пользующийся большой популярностью фестиваль «Семейные ансамбли».';

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
            'ГБУДО г. Москвы\n«ДМШ им. К.Н. Игумнова»',
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
                        'О школе',
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
                        'Программы',
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.place_outlined,
                                    color: primaryBlackColor,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'Москва, ул. Покровка, д. 39, стр.3',
                                    style: TextStyle(
                                        color: primaryBlackColor,
                                        fontSize: 14,
                                        fontFamily: 'DeeDee',
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.work_history_outlined,
                                    color: primaryBlackColor,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'пн.-сб.: 8:00 - 22:00; вс.: 10:00 - 18:00',
                                    style: TextStyle(
                                        color: primaryBlackColor,
                                        fontSize: 14,
                                        fontFamily: 'DeeDee',
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              )
                            ],
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'О школе',
                            style: TextStyle(
                                fontSize: 20,
                                color: primaryBlackColor,
                                fontWeight: FontWeight.w400),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/icons/star.svg',
                                color: const Color(0xFFFFD25F),
                                width: 24,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                '4.8',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      color: primaryGreyColor.shade100,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 20,
                                    ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: primaryPaddingHorizontal),
                      child: Text(
                        newsBody,
                        style: theme.textTheme.headlineSmall!.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: primaryPaddingHorizontal),
                      child: Text(
                        'Преподавательский состав',
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
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: primaryPaddingHorizontal),
                      child: Text(
                        'Контакты',
                        style: TextStyle(
                            fontSize: 20,
                            color: primaryBlackColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: primaryPaddingHorizontal - 2),
                      child: GestureDetector(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              duration: Duration(milliseconds: 1226),
                              backgroundColor: primaryGreenColor,
                              content: Center(
                                child: Text(
                                  'Вызов',
                                  style: TextStyle(
                                      color: primaryWhiteColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ),
                          );
                        },
                        child: Card(
                          color: primaryGreyColor.shade500,
                          child: ListTile(
                            title: const Text(
                              'Телефон',
                              style: TextStyle(
                                  color: primaryBlackColor,
                                  fontSize: 14,
                                  fontFamily: 'DeeDee',
                                  fontWeight: FontWeight.w400),
                            ),
                            subtitle: Text(
                              '8 (495) 917-56-77',
                              style: TextStyle(
                                  color: primaryGreyColor.shade100,
                                  fontSize: 14,
                                  fontFamily: 'DeeDee',
                                  fontWeight: FontWeight.w400),
                            ),
                            trailing: const Icon(
                              CupertinoIcons.phone_circle_fill,
                              size: 32,
                              color: primaryGreenColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: primaryPaddingHorizontal - 2),
                      child: GestureDetector(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              duration: Duration(milliseconds: 1226),
                              backgroundColor: primaryGreenColor,
                              content: Center(
                                child: Text(
                                  'Письмо',
                                  style: TextStyle(
                                      color: primaryWhiteColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ),
                          );
                        },
                        child: Card(
                          color: primaryGreyColor.shade500,
                          child: ListTile(
                            title: const Text(
                              'E-mail',
                              style: TextStyle(
                                  color: primaryBlackColor,
                                  fontSize: 14,
                                  fontFamily: 'DeeDee',
                                  fontWeight: FontWeight.w400),
                            ),
                            subtitle: Text(
                              'dmshigumnova@culture.mos.ru',
                              style: TextStyle(
                                  color: primaryGreyColor.shade100,
                                  fontSize: 14,
                                  fontFamily: 'DeeDee',
                                  fontWeight: FontWeight.w400),
                            ),
                            trailing: const Icon(
                              CupertinoIcons.mail_solid,
                              size: 32,
                              color: primaryGreenColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: primaryPaddingHorizontal - 2),
                      child: GestureDetector(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              duration: Duration(milliseconds: 1226),
                              backgroundColor: primaryGreenColor,
                              content: Center(
                                child: Text(
                                  'Открытие карты',
                                  style: TextStyle(
                                      color: primaryWhiteColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ),
                          );
                        },
                        child: Card(
                          color: primaryGreyColor.shade500,
                          child: ListTile(
                            title: const Text(
                              'Адрес',
                              style: TextStyle(
                                  color: primaryBlackColor,
                                  fontSize: 14,
                                  fontFamily: 'DeeDee',
                                  fontWeight: FontWeight.w400),
                            ),
                            subtitle: Text(
                              'Москва, ул. Покровка, д. 39, стр.3',
                              style: TextStyle(
                                  color: primaryGreyColor.shade100,
                                  fontSize: 14,
                                  fontFamily: 'DeeDee',
                                  fontWeight: FontWeight.w400),
                            ),
                            trailing: const Icon(
                              CupertinoIcons.placemark_fill,
                              size: 32,
                              color: primaryGreenColor,
                            ),
                          ),
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
                        'График работы',
                        style: TextStyle(
                            fontSize: 20,
                            color: primaryBlackColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.work_history_outlined,
                                    color: primaryBlackColor,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'пн.-сб.: 8:00 - 22:00; вс.: 10:00 - 18:00',
                                    style: TextStyle(
                                        color: primaryBlackColor,
                                        fontSize: 14,
                                        fontFamily: 'DeeDee',
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              )
                            ],
                          ),
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
                        'Новости школы',
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
                        Navigator.of(context).pushNamed('/news_detail');
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
                                                'assets/images/media/school_news.png'),
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
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                height: 16,
                                              ),
                                              Text(
                                                'Расписание репетиций конкурса «Под знаком Игумнова»',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleSmall,
                                              ),
                                              const SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                'Внимание! Опубликовано расписание репетиций участников II Московского открытого конкурса-фестиваля «Под знаком К.Н. Игумнова»! Перенос времени репетиций не предусмотрен.',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Divider(
                                                height: 1,
                                                thickness: 1,
                                                color:
                                                    primaryGreyColor.shade300,
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    '25.05.2023',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .labelMedium!
                                                        .copyWith(
                                                            color:
                                                                primaryGreyColor
                                                                    .shade200),
                                                  ),
                                                  Icon(
                                                    Icons.share,
                                                    size: 16,
                                                    color: primaryGreenColor
                                                        .shade200,
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
                                                'assets/images/media/school_news_2.png'),
                                            fit: BoxFit.cover,
                                            alignment: Alignment.topCenter,
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
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                height: 16,
                                              ),
                                              Text(
                                                'Кузьма Треушников — лауреат конкурса «MusicAlas»',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleSmall,
                                              ),
                                              const SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                'Поздравляем Треушникова Кузьму (преподаватель Подклетнева Елена Валерьевна, концертмейстер Андросов Игорь Юрьевич) с получением звания ',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Divider(
                                                height: 1,
                                                thickness: 1,
                                                color:
                                                    primaryGreyColor.shade300,
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    '25.05.2023',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .labelMedium!
                                                        .copyWith(
                                                            color:
                                                                primaryGreyColor
                                                                    .shade200),
                                                  ),
                                                  Icon(
                                                    Icons.share,
                                                    size: 16,
                                                    color: primaryGreenColor
                                                        .shade200,
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
                            const SizedBox(
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
                        'Медиа школы',
                        style: TextStyle(
                            fontSize: 20,
                            color: primaryBlackColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: primaryPaddingHorizontal),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 160,
                            height: 160,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/media/school_media.png'),
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
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 160,
                            height: 160,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/media/school_media_2.png'),
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
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
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
                      child: TextFormField(
                        decoration: primaryInputDecoration.copyWith(
                            hintText: 'Поиск',
                            suffixIcon: const Icon(Icons.search)),
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
                                    style: theme.textTheme.labelMedium!
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
                                color: primaryGreyColor.shade500,
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
                                    'Народные инструменты',
                                    style: theme.textTheme.labelMedium!
                                        .copyWith(
                                            color: primaryGreyColor.shade200,
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
                                color: primaryGreyColor.shade500,
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
                                    'Духовые и ударные инструменты',
                                    style: theme.textTheme.labelMedium!
                                        .copyWith(
                                            color: primaryGreyColor.shade200,
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
                                color: primaryGreyColor.shade500,
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
                                    'Фортепиано',
                                    style: theme.textTheme.labelMedium!
                                        .copyWith(
                                            color: primaryGreyColor.shade200,
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
                                color: primaryGreyColor.shade500,
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
                                    'Струнные инструменты ',
                                    style: theme.textTheme.labelMedium!
                                        .copyWith(
                                            color: primaryGreyColor.shade200,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/program_detail');
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: primaryPaddingHorizontal),
                        child: Container(
                          decoration: BoxDecoration(
                              color: primaryGreyColor.shade500,
                              borderRadius: primaryInputBorderRadius,
                              boxShadow: primaryBoxShadow),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Хоровое пение',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          'Обучаем умениям и навыкам\nв области хорового исполнительства',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall,
                                        ),
                                      ],
                                    ),
                                    CircleAvatar(
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
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16),
                                Row(
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                        color: primaryGreenColor,
                                        borderRadius: primaryInputBorderRadius,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 4),
                                        child: Center(
                                          child: Text(
                                            '8 лет',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium!
                                                .copyWith(
                                                    color: primaryWhiteColor),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(
                                        color: primaryGreenColor,
                                        borderRadius: primaryInputBorderRadius,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 4),
                                        child: Center(
                                          child: Text(
                                            'Работа в группах',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium!
                                                .copyWith(
                                                    color: primaryWhiteColor),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('Учеников: 88',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .copyWith(
                                                color: primaryBlackColor
                                                    .withOpacity(0.9))),
                                    Text(
                                      '15 000 Р/мес.',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              color:
                                                  primaryPurpleColor.shade100,
                                              fontFamily: 'DeeDee',
                                              fontSize: 20),
                                    ),
                                  ],
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
                        Navigator.of(context).pushNamed('/program_detail');
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: primaryPaddingHorizontal),
                        child: Container(
                          decoration: BoxDecoration(
                              color: primaryGreyColor.shade500,
                              borderRadius: primaryInputBorderRadius,
                              boxShadow: primaryBoxShadow),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Музыкальный слух',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          'Поможем вам развить\nмузыкально-творческие способности',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall,
                                        ),
                                      ],
                                    ),
                                    CircleAvatar(
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
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16),
                                Row(
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                        color: primaryGreenColor,
                                        borderRadius: primaryInputBorderRadius,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 4),
                                        child: Center(
                                          child: Text(
                                            '1 год',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium!
                                                .copyWith(
                                                    color: primaryWhiteColor),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(
                                        color: primaryGreenColor,
                                        borderRadius: primaryInputBorderRadius,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 4),
                                        child: Center(
                                          child: Text(
                                            'Работа в группах',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium!
                                                .copyWith(
                                                    color: primaryWhiteColor),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('Учеников: 34',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .copyWith(
                                                color: primaryBlackColor
                                                    .withOpacity(0.9))),
                                    Text(
                                      '15 000 Р/мес.',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              color:
                                                  primaryPurpleColor.shade100,
                                              fontFamily: 'DeeDee',
                                              fontSize: 20),
                                    ),
                                  ],
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
                        Navigator.of(context).pushNamed('/program_detail');
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: primaryPaddingHorizontal),
                        child: Container(
                          decoration: BoxDecoration(
                              color: primaryGreyColor.shade500,
                              borderRadius: primaryInputBorderRadius,
                              boxShadow: primaryBoxShadow),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Элементарная теория музыки',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          'Освойте теорию музыки вместе с нашими\nуникальными программами',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall,
                                        ),
                                      ],
                                    ),
                                    CircleAvatar(
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
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16),
                                Row(
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                        color: primaryGreenColor,
                                        borderRadius: primaryInputBorderRadius,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 4),
                                        child: Center(
                                          child: Text(
                                            '2 года',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium!
                                                .copyWith(
                                                    color: primaryWhiteColor),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(
                                        color: primaryGreenColor,
                                        borderRadius: primaryInputBorderRadius,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 4),
                                        child: Center(
                                          child: Text(
                                            'Работа в группах',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium!
                                                .copyWith(
                                                    color: primaryWhiteColor),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('Учеников: 20',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .copyWith(
                                                color: primaryBlackColor
                                                    .withOpacity(0.9))),
                                    Text(
                                      '15 000 Р/мес.',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              color:
                                                  primaryPurpleColor.shade100,
                                              fontFamily: 'DeeDee',
                                              fontSize: 20),
                                    ),
                                  ],
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
              image: AssetImage('assets/images/media/school_1.png'),
              fit: BoxFit.cover),
          borderRadius: primaryInputBorderRadius,
        ),
      ),
    );
  }
}
