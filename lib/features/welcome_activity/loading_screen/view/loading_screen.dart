import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mshi/features/welcome_activity/loading_screen/view/widgets/widgets.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  final String _background =
      'assets/images/backgrounds/loading_screen_background.svg';
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    // Start Animation

    onStartLoadingScreen();
    onEndLoadingScreen();
  }

  void onStartLoadingScreen() {
    Future.delayed(const Duration(milliseconds: 1), () {
      setState(() {
        _isLoading = true;
      });
    });
  }

  void onEndLoadingScreen() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed('/onboarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SvgPicture.asset(fit: BoxFit.fill, _background),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(48.0),
            child: MaskAnimatedLogo(isLoading: _isLoading),
          ),
        ),
      ]),
    );
  }
}
