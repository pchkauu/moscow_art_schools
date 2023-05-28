import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mshi/core/ui/constants/ui_constant.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _pageIndex = 0;

  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: deviceWidth * 0.044,
                left: deviceWidth * 0.044,
              ),
              child: SvgPicture.asset(
                'assets/images/logo/logo_text.svg',
                width: deviceWidth * 0.27,
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _pageController.nextPage(
                        duration: const Duration(milliseconds: 613),
                        curve: Curves.linearToEaseOut);
                  });
                },
                child: PageView.builder(
                  itemCount: demoData.length,
                  physics: const BouncingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemBuilder: ((context, index) {
                    return OnboardContent(
                      deviceWidth: deviceWidth,
                      deviceHeight: deviceHeight,
                      theme: theme,
                      image: demoData[index].image,
                      title: demoData[index].title,
                      description: demoData[index].description,
                    );
                  }),
                ),
              ),
            ),
            const SizedBox(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.044),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ...List.generate(
                        demoData.length,
                        (index) => DotIndicator(
                            deviceHeight: deviceHeight,
                            deviceWidth: deviceWidth,
                            theme: theme,
                            isActive: index == _pageIndex),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: theme.primaryColor),
                      child: _pageIndex == 3
                          ? Center(
                              child: SvgPicture.asset(
                                'assets/icons/logo.svg',
                                color: primaryWhiteColor,
                              ),
                            )
                          : const Center(
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                      onPressed: () {
                        if (_pageIndex == 3) {
                          Navigator.of(context).pushReplacementNamed('/auth');
                        }
                        _pageController.nextPage(
                            duration: const Duration(milliseconds: 613),
                            curve: Curves.linearToEaseOut);
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: deviceHeight * 0.015,
            ),
          ],
        ),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    required this.deviceHeight,
    required this.deviceWidth,
    required this.theme,
    this.isActive = false,
  });

  final double deviceHeight;
  final double deviceWidth;
  final ThemeData theme;

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 8),
      height: 8,
      width: isActive ? 40 : 8,
      duration: const Duration(milliseconds: 613),
      decoration: BoxDecoration(
          color: isActive ? theme.primaryColor : Colors.grey,
          borderRadius: const BorderRadius.all(Radius.circular(10.0))),
    );
  }
}

class Onboard {
  final String image, title, description;

  Onboard(
      {required this.image, required this.title, required this.description});
}

final List<Onboard> demoData = [
  Onboard(
      image: 'assets/images/onboarding/solved/onboarding_1.png',
      title: 'Добро пожаловать в мир искусства!',
      description:
          'Московские Школы Искусств — ваш проводник в мир прекрасного'),
  Onboard(
      image: 'assets/images/onboarding/solved/onboarding_2.png',
      title: 'Познавайте культуру\nс лёгкостью!',
      description:
          'Вас ждет множество учебных материалов, посвященных культуре и искусству'),
  Onboard(
      image: 'assets/images/onboarding/solved/onboarding_3.png',
      title: 'Станьте частью дружного сообщества',
      description:
          'Общайтесь и учитесь вместе с друзьями! Найдите сообщество по интересам'),
  Onboard(
      image: 'assets/images/onboarding/solved/onboarding_4.png',
      title: 'В центре событий',
      description:
          'Активно участвуйте в событиях — встречи с экспертами, курсы, мастер-классы и многое другое'),
];

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
    required this.deviceWidth,
    required this.deviceHeight,
    required this.theme,
    required this.image,
    required this.title,
    required this.description,
  });

  final double deviceWidth;
  final double deviceHeight;
  final ThemeData theme;

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.044),
            child: Text(title,
                style: theme.textTheme.labelLarge!
                    .copyWith(fontSize: deviceWidth * 0.088)),
          ),
          SizedBox(
            height: deviceHeight * 0.01,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.044),
            child: Text(description,
                style: theme.textTheme.labelMedium!
                    .copyWith(fontSize: deviceWidth * 0.044)),
          ),
        ],
      ),
    );
  }
}
