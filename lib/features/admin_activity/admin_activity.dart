import 'package:flutter/material.dart';
import 'package:mshi/core/ui/ui.dart';

class AdminActivity extends StatefulWidget {
  const AdminActivity({super.key});

  @override
  State<AdminActivity> createState() => _AdminActivityState();
}

class _AdminActivityState extends State<AdminActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 32,
          ),
          const Text('Сторона администратора находится в разработке'),
          const SizedBox(
            height: 32,
          ),
          SizedBox(
            height: 45,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFF0077FF)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/main_activiy');
              },
              child: const Text(
                'К стороне пользователя',
                style: TextStyle(
                    color: primaryWhiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Image.asset('assets/images/admin/admin_1.png'),
          Image.asset('assets/images/admin/admin_2.png'),
          Image.asset('assets/images/admin/admin_3.png'),
          Image.asset('assets/images/admin/admin_4.png'),
          Image.asset('assets/images/admin/admin_5.png'),
          Image.asset('assets/images/admin/admin_6.png'),
          Image.asset('assets/images/admin/admin_7.png'),
          Image.asset('assets/images/admin/admin_8.png'),
          Image.asset('assets/images/admin/admin_9.png'),
        ],
      ),
    );
  }
}
