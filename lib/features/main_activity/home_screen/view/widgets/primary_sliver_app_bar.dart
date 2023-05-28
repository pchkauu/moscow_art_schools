import 'package:flutter/material.dart';
import 'package:mshi/core/ui/ui.dart';

class PrimarySliverAppBar extends StatelessWidget {
  const PrimarySliverAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: primaryGreenColor,
      floating: true,
      snap: true,
      centerTitle: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/notifications');
            },
            child: const Icon(
              Icons.notifications_outlined,
              color: primaryWhiteColor,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
