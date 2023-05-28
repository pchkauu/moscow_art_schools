import 'package:flutter/material.dart';
import 'package:mshi/core/ui/constants/ui_constant.dart';

class AnimatedLogoText extends StatelessWidget {
  const AnimatedLogoText({
    super.key,
    required this.isLoading,
  });

  final bool isLoading;

  final Duration duration = const Duration(seconds: 2);
  final Cubic curves = Curves.easeInToLinear;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AnimatedContainer(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: const Alignment(0.8, 2),
          colors: <Color>[
            isLoading ? theme.primaryColorLight : theme.primaryColor,
            isLoading ? primaryGreenColor.shade600 : theme.primaryColor,
          ],
        ),
      ),
      duration: duration,
      curve: curves,
    );
  }
}
