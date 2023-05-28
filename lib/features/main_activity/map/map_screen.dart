import 'package:flutter/material.dart';
import 'package:mshi/features/main_activity/home_screen/view/widgets/widgets.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const PrimarySliverAppBar(
            title: 'Карта МШИ',
          )
        ],
        body: Image.asset(
          'assets/source/карта.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
