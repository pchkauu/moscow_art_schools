import 'package:flutter/material.dart';
import 'package:mshi/core/router/router.dart';
import 'package:mshi/core/ui/themes/theme.dart';

class MSHIApp extends StatelessWidget {
  const MSHIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      routes: routes,
    );
  }
}
