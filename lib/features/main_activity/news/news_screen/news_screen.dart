import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mshi/core/ui/ui.dart';
import 'package:mshi/features/main_activity/home_screen/view/widgets/widgets.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const PrimarySliverAppBar(
            title: 'Новости',
          )
        ],
        body: const NewsList(),
      ),
    );
  }
}

class NewsList extends StatelessWidget {
  const NewsList({
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
            'Рубрики',
            style: theme.primaryTextTheme.headlineMedium,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 82,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: primaryPaddingHorizontal, bottom: 2),
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image:
                          AssetImage('assets/images/backgrounds/rubrics_1.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: primaryInputBorderRadius,
                    boxShadow: primaryBoxShadow,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: primaryPaddingHorizontal, bottom: 2),
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image:
                          AssetImage('assets/images/backgrounds/rubrics_2.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: primaryInputBorderRadius,
                    boxShadow: primaryBoxShadow,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: primaryPaddingHorizontal, bottom: 2),
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image:
                          AssetImage('assets/images/backgrounds/rubrics_3.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: primaryInputBorderRadius,
                    boxShadow: primaryBoxShadow,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: primaryPaddingHorizontal, bottom: 2),
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image:
                          AssetImage('assets/images/backgrounds/rubrics_4.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: primaryInputBorderRadius,
                    boxShadow: primaryBoxShadow,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: primaryPaddingHorizontal, bottom: 2),
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image:
                          AssetImage('assets/images/backgrounds/rubrics_5.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: primaryInputBorderRadius,
                    boxShadow: primaryBoxShadow,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
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
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: primaryPaddingHorizontal),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/news_detail');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 0,
                          blurRadius: 1,
                          offset: const Offset(
                              0, 1.0), // changes position of shadow
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
                                  'assets/images/media/news_4.png',
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
                                      color: primaryPurpleColor.shade200,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5.0))),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 4),
                                    child: Text(
                                      'Театр',
                                      style: theme.textTheme.labelMedium!
                                          .copyWith(
                                              color: primaryWhiteColor,
                                              fontSize: 12),
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
                                '«Театр — это такая кафедра, с которой можно много сказать миру добра»',
                                style: theme.textTheme.titleMedium!.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: primaryBlackColor),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                'На сцене театра Et Cetera юные актёры московских школ искусств продемонстрировали своё мастерство в рамках III тура грантов Мэра Москвы в сфере культуры и искусства.',
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('27.05.2023',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                              color:
                                                  primaryGreyColor.shade100)),
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
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 0,
                          blurRadius: 1,
                          offset: const Offset(
                              0, 1.0), // changes position of shadow
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
                                  'assets/images/media/news_3.png',
                                ),
                                alignment: Alignment.topCenter,
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
                                  decoration: const BoxDecoration(
                                      color: primaryGreenColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0))),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 4),
                                    child: Text(
                                      'Музыка',
                                      style: theme.textTheme.labelMedium!
                                          .copyWith(
                                              color: primaryWhiteColor,
                                              fontSize: 12),
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
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: primaryPaddingHorizontal),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ученики столичных школ искусств\nвыступили в рамках Ночи музеев 20 мая',
                                style: theme.textTheme.titleMedium!.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: primaryBlackColor),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                'На сцене Зеленого театра ВДНХ свои яркие номера представили творческие коллективы и солисты московских школ искусств.',
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('23.05.2023',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                              color:
                                                  primaryGreyColor.shade100)),
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
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 0,
                          blurRadius: 1,
                          offset: const Offset(
                              0, 1.0), // changes position of shadow
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
                                  'assets/images/media/news_2.png',
                                ),
                                alignment: Alignment.topCenter,
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
                                  decoration: const BoxDecoration(
                                      color: primaryGreenColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0))),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 4),
                                    child: Text(
                                      'Музыка',
                                      style: theme.textTheme.labelMedium!
                                          .copyWith(
                                              color: primaryWhiteColor,
                                              fontSize: 12),
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
                                '85 лет со дня рождения\nВладимира Высоцкого!',
                                style: theme.textTheme.titleMedium!.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: primaryBlackColor),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                'В честь 85-летия со дня рождения Владимира Высоцкого пройдет творческий вечер с исполнением знаменитых стихов автора и песен под аккомпанемент гитары',
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('23.05.2023',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                              color:
                                                  primaryGreyColor.shade100)),
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
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 0,
                          blurRadius: 1,
                          offset: const Offset(
                              0, 1.0), // changes position of shadow
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
                                  'assets/images/media/news_1.jpeg',
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
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5.0))),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 4),
                                    child: Text(
                                      'Танцы',
                                      style: theme.textTheme.labelMedium!
                                          .copyWith(
                                              color: primaryWhiteColor,
                                              fontSize: 12),
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
                                'Талант и грация: в Москве пройдёт концерт учеников столичного хореографического училища',
                                style: theme.textTheme.titleMedium!.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: primaryBlackColor),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                'В 2023 году Московское государственное хореографическое училище имени Л.M. Лавровского отмечает свой тридцатилетний юбилей.',
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('23.05.2023',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                              color:
                                                  primaryGreyColor.shade100)),
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
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
