import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mshi/core/ui/ui.dart';
import 'package:mshi/features/welcome_activity/auth_screen/view/widgets/widgets.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isStudent = true, isAdmin = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // final deviceWidth = MediaQuery.of(context).size.width;
    // final deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) =>
              [const AuthSliverAppBar()],
          body: authList(theme, context),
        ),
      ),
    );
  }

  ListView authList(ThemeData theme, BuildContext context) {
    return ListView(
        physics: const BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.fast),
        children: [
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 328,
                  height: 32,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 216, 211, 211),
                    borderRadius: BorderRadius.all(
                      Radius.circular(9),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isStudent = true;
                            isAdmin = false;
                          });
                        },
                        child: AnimatedContainer(
                          width: 162,
                          height: 28,
                          duration: const Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            color: isStudent
                                ? theme.primaryColor
                                : const Color.fromARGB(255, 216, 211, 211),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(7),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Ученик/родитель',
                              style: theme.primaryTextTheme.labelLarge!
                                  .copyWith(
                                      color: isStudent
                                          ? primaryWhiteColor
                                          : primaryGreyColor),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isStudent = false;
                            isAdmin = true;
                          });
                        },
                        child: AnimatedContainer(
                          width: 162,
                          height: 28,
                          duration: const Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            color: isAdmin
                                ? theme.primaryColor
                                : const Color.fromARGB(255, 216, 211, 211),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(7),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Администратор',
                              style: theme.primaryTextTheme.labelLarge!
                                  .copyWith(
                                      color: isAdmin
                                          ? primaryWhiteColor
                                          : primaryGreyColor),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                /// /// //
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Вход',
                  style: theme.primaryTextTheme.headlineMedium,
                ),
                const SizedBox(
                  height: 40,
                ),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'E-mail',
                        style: theme.primaryTextTheme.headlineSmall,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        cursorColor: primaryInputCursorColor,
                        cursorWidth: primaryInputCursorWidth,
                        style: primaryInputLabelTextStyle,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Пароль',
                        style: theme.primaryTextTheme.bodyMedium!
                            .copyWith(fontSize: 15),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: primaryInputDecoration.copyWith(
                          suffixIcon: Icon(
                            Icons.visibility_off,
                            color: primaryGreyColor.shade300,
                          ),
                        ),
                        cursorColor: primaryInputCursorColor,
                        cursorWidth: primaryInputCursorWidth,
                        style: const TextStyle(
                            fontFamily: 'DeeDee', color: primaryGreyColor),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Забыли пароль?',
                                style: theme.primaryTextTheme.bodyMedium!
                                    .copyWith(
                                        fontSize: 14,
                                        color: primaryGreyColor.shade100),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  child: MaterialButton(
                    highlightColor: primaryPinkColor.shade400,
                    color: primaryGreenColor,
                    onPressed: () {
                      if (isStudent) {
                        Navigator.of(context)
                            .pushReplacementNamed('/main_activiy');
                      } else {
                        Navigator.of(context)
                            .pushReplacementNamed('/admin_activity');
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'Войти',
                        style: theme.primaryTextTheme.labelLarge!.copyWith(
                          color: primaryWhiteColor,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                isStudent
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'или через профиль в социальных сетях',
                            style: theme.primaryTextTheme.labelLarge!.copyWith(
                              color: primaryBlackColor,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: MaterialButton(
                              color: const Color(0xFF0077FF),
                              onPressed: () {
                                if (isStudent) {
                                  Navigator.of(context)
                                      .pushReplacementNamed('/main_activiy');
                                } else {
                                  Navigator.of(context)
                                      .pushReplacementNamed('/admin_activity');
                                }
                              },
                              child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child:
                                      SvgPicture.asset('assets/icons/vk.svg')),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Ещё нет аккаунта? Зарегистрируйтесь',
                              style:
                                  theme.primaryTextTheme.labelLarge!.copyWith(
                                color: primaryBlackColor,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        ]);
  }
}
