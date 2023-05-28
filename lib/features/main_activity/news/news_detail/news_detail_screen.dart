import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mshi/core/ui/ui.dart';
import 'package:mshi/features/main_activity/home_screen/view/widgets/widgets.dart';

class NewsDetailScreen extends StatefulWidget {
  const NewsDetailScreen({
    super.key,
  });

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const PrimarySliverAppBar(
            title: 'Подробнее',
          )
        ],
        body: const NewsDetailBody(),
      ),
    );
  }
}

const String newsBody =
    'В 2023 году Московское государственное хореографическое училище имени Л.M. Лавровского отмечает свой тридцатилетний юбилей. В честь этого события 25 мая в 19:00 состоится грандиозный отчётный концерт в Московском государственном академическом театре «Русская песня», приглашёнными гостями которого станут деятели хореографического искусства Донецка. Концерт «Дивертисмент: Эпизод 1» состоит из номеров, поставленных в классической, народной и современной хореографии.\n\nРежиссёр концерта — директор Московского государственного хореографического училища имени Л.М. Лавровского, руководитель Центра профессионального мастерства по направлению «Хореографическое искусство», народный артист Республики Татарстан, педагог, балетмейстер Айдар Ахметов.';

class NewsDetailBody extends StatelessWidget {
  const NewsDetailBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: primaryPaddingHorizontal),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const NewsDetailHeaderImage(),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Талант и грация: в Москве пройдёт концерт учеников столичного хореографического училища и донецкой балетной школы!',
            style: theme.textTheme.headlineSmall!
                .copyWith(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '23.05.2023',
                style: TextStyle(
                    fontSize: 16,
                    color: primaryGreyColor.shade100,
                    fontWeight: FontWeight.w300),
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/heart-alt.svg',
                    color: primaryPinkColor.shade100,
                    width: 20,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    '54',
                    style: TextStyle(
                        fontSize: 20,
                        color: primaryPinkColor.shade100,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            newsBody,
            style: theme.textTheme.headlineSmall!
                .copyWith(fontSize: 16, fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 32,
          ),
          SizedBox(
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
                    duration: Duration(milliseconds: 613),
                    backgroundColor: primaryGreenColor,
                    content: Center(
                      child: Text(
                        'Поделиться новостью',
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
                'Поделиться новостью',
                style: TextStyle(
                    color: primaryWhiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 45,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFF0077FF)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    duration: Duration(milliseconds: 613),
                    backgroundColor: Color(0xFF0077FF),
                    content: Center(
                      child: Text(
                        'Поделиться новостью в ВК',
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
                    'Поделиться',
                    style: TextStyle(
                        color: primaryWhiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset('assets/icons/vk.svg'),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
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
              image: AssetImage('assets/images/media/news_1.jpeg'),
              fit: BoxFit.cover),
          borderRadius: primaryInputBorderRadius,
        ),
      ),
    );
  }
}
