import 'package:flutter/material.dart';

import 'package:mshi/core/ui/ui.dart';
import 'package:mshi/features/main_activity/home_screen/view/widgets/widgets.dart';

class TeacherDetailScreen extends StatefulWidget {
  const TeacherDetailScreen({
    super.key,
  });

  @override
  State<TeacherDetailScreen> createState() => _TeacherDetailScreenState();
}

class _TeacherDetailScreenState extends State<TeacherDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const PrimarySliverAppBar(
            title: 'О преподавателе',
          )
        ],
        body: const NewsDetailBody(),
      ),
    );
  }
}

class NewsDetailBody extends StatelessWidget {
  const NewsDetailBody({
    super.key,
  });

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
            'Екатерина Сергеевна Кузнецова',
            style: theme.textTheme.headlineSmall!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: primaryBlackColor),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Image.asset('assets/images/backgrounds/teacher_backround.png'),
        const SizedBox(
          height: 48,
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
      aspectRatio: 328 / 423,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/media/teacher_1.jpg'),
              fit: BoxFit.cover),
          borderRadius: primaryInputBorderRadius,
        ),
      ),
    );
  }
}
