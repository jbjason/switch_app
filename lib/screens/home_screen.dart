import 'package:flutter/material.dart';
import 'package:switch_app/screens/details_screen.dart';
import 'package:switch_app/widgets/home_widgets/home_body_painter.dart';
import 'package:switch_app/constants/sw_constatns.dart';
import 'package:switch_app/widgets/home_widgets/home_body.dart';
import 'package:switch_app/widgets/home_widgets/home_navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backColor,
      body: Column(
        children: [
          // Body
          Expanded(
            child: CustomPaint(
              painter: HomeBodyPainter(),
              child: const HomeBody(),
            ),
          ),
          // NavBar
          SizedBox(
            height: size.height * .12,
            width: size.width,
            child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const DetailsScreen()));
                },
                child: const HomeNavbar()),
          ),
        ],
      ),
    );
  }
}
