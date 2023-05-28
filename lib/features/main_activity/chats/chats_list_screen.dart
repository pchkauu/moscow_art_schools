import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mshi/core/ui/ui.dart';
import 'package:mshi/features/main_activity/home_screen/view/widgets/widgets.dart';

class ChatsListScreen extends StatefulWidget {
  const ChatsListScreen({super.key});

  @override
  State<ChatsListScreen> createState() => _ChatsListScreenState();
}

class _ChatsListScreenState extends State<ChatsListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const PrimarySliverAppBar(
            title: 'Чаты',
          )
        ],
        body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Dismissible(
              key: ValueKey<int>(index),
              background: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      CupertinoIcons.mail,
                      size: 32,
                      color: primaryGreenColor,
                    ),
                  ],
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      duration: Duration(milliseconds: 613),
                      backgroundColor: primaryGreenColor,
                      content: Center(
                        child: Text(
                          'Открыть чат',
                          style: TextStyle(
                              color: primaryWhiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  );
                },
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
                                'Александр Молчанов',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                '13:43: Супер, договорились!',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ],
                      ),
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
