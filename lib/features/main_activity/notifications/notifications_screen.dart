import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mshi/core/ui/ui.dart';
import 'package:mshi/features/main_activity/home_screen/view/widgets/widgets.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const PrimarySliverAppBar(
            title: 'Уведомления',
          )
        ],
        body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Dismissible(
              key: ValueKey<int>(index),
              background: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      CupertinoIcons.delete_solid,
                      size: 32,
                      color: primaryPinkColor.shade100,
                    ),
                    const Icon(
                      CupertinoIcons.add_circled_solid,
                      size: 32,
                      color: primaryGreenColor,
                    ),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8, right: 8, left: 8),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: primaryBoxShadow,
                    borderRadius: primaryInputBorderRadius,
                    color: primaryGreyColor.shade500,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(primaryPaddingHorizontal),
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
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Приглашает Вас пройти курс',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
