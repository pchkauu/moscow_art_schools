import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mshi/core/ui/ui.dart';

class AuthSliverAppBar extends StatelessWidget {
  const AuthSliverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: primaryWhiteColor,
      floating: true,
      elevation: 0,
      title: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: primaryPaddingHorizontal),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              logo,
              width: 32,
            ),
          ],
        ),
      ),
    );
  }
}
