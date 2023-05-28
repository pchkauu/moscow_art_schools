import 'package:flutter/material.dart';
import 'package:mshi/features/welcome_activity/loading_screen/view/widgets/widgets.dart';
import 'package:widget_mask/widget_mask.dart';

class MaskAnimatedLogo extends StatelessWidget {
  const MaskAnimatedLogo({
    super.key,
    required this.isLoading,
  });

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return WidgetMask(
      blendMode: BlendMode.srcATop,
      childSaveLayer: true,
      mask: AnimatedLogoText(isLoading: isLoading),
      child: Image.asset(
        'assets/images/masks/loading_screen_mask.png',
      ),
    );
  }
}
