import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mshi/features/main_activity/home_screen/view/widgets/widgets.dart';

import '../../../../core/ui/ui.dart';

class SchoolListScreen extends StatelessWidget {
  const SchoolListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const PrimarySliverAppBar(
            title: 'Школы',
          )
        ],
        body: const SchoolList(),
      ),
    );
  }
}

class SchoolList extends StatelessWidget {
  const SchoolList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: primaryPaddingHorizontal),
          child: TextFormField(
            decoration: primaryInputDecoration.copyWith(
                hintText: 'Поиск', suffixIcon: Icon(Icons.search)),
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
          height: 24,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/school_detail');
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: SizedBox(
              height: 311,
              width: 328,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    child: Container(
                      width: 328,
                      height: 170,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        image: DecorationImage(
                          image: AssetImage('assets/images/media/school_1.png'),
                          fit: BoxFit.cover,
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 147,
                    child: Container(
                      width: 328,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: primaryBoxShadow,
                        color: primaryWhiteColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              'ГБУДО г. Москвы «ДМШ им. К.Н. Игумнова»',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Школа – одна из старейших в городе Москве. Она была основана в 1920 году и носит имя известного русского пианиста, профессора Московской консерватории К.Н. Игумнова.',
                              style: Theme.of(context).textTheme.bodySmall,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
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
                                Text(
                                  'Москва, ул. Покровка, д. 39, стр.3',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                          color: primaryGreenColor.shade200),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/star.svg',
                                      color: const Color(0xFFFFD25F),
                                      width: 20,
                                    ),
                                    Text(
                                      '4.8',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge!
                                          .copyWith(
                                            color: primaryGreyColor.shade100,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 15,
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
                      top: 16,
                      right: 32,
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
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/school_detail');
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: SizedBox(
              height: 311,
              width: 328,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    child: Container(
                      width: 328,
                      height: 170,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        image: DecorationImage(
                          image: AssetImage('assets/images/media/school_3.png'),
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 147,
                    child: Container(
                      width: 328,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: primaryBoxShadow,
                        color: primaryWhiteColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              'ГБПОУ Г. Москвы "Академия Джаза"',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Академия джаза — уникальное в своём роде учебное заведение России. Наша миссия — образование и всестороннее развитие музыкально одарённых детей.',
                              style: Theme.of(context).textTheme.bodySmall,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
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
                                Text(
                                  'Москва, ул. Трёхгорный Вал, д.2',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                          color: primaryGreenColor.shade200),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/star.svg',
                                      color: const Color(0xFFFFD25F),
                                      width: 20,
                                    ),
                                    Text(
                                      '4.8',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge!
                                          .copyWith(
                                            color: primaryGreyColor.shade100,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 15,
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
                      top: 16,
                      right: 32,
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
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/school_detail');
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: SizedBox(
              height: 311,
              width: 328,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    child: Container(
                      width: 328,
                      height: 170,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        image: DecorationImage(
                          image: AssetImage('assets/images/media/school_2.png'),
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 147,
                    child: Container(
                      width: 328,
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: primaryBoxShadow,
                        color: primaryWhiteColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              'ГБУДО г. Москвы "ДШИ "Юность"',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              '«Юность» — это место, где ваш ребёнок сможет получить профессиональные знания и навыки в области музыки, танца, изобразительного и прикладного искусства.',
                              style: Theme.of(context).textTheme.bodySmall,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
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
                                Text(
                                  'Большая Черемушкинская, д.19А',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                          color: primaryGreenColor.shade200),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/star.svg',
                                      color: const Color(0xFFFFD25F),
                                      width: 20,
                                    ),
                                    Text(
                                      '4.9',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge!
                                          .copyWith(
                                            color: primaryGreyColor.shade100,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 15,
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
                      top: 16,
                      right: 32,
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
        ),
        const SizedBox(
          width: 16,
        ),
      ],
    );
  }
}
