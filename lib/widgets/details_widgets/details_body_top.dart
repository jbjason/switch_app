import 'package:flutter/material.dart';
import 'package:switch_app/constants/my_color.dart';
import 'package:switch_app/constants/my_dimens.dart';
import 'package:switch_app/constants/my_image.dart';

class DetailsBodyTop extends StatelessWidget {
  const DetailsBodyTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white12,
        image:
            DecorationImage(image: AssetImage(MyImage.pic1), fit: BoxFit.cover),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 60,
            child: DecoratedBox(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: MyColor.backColor,
                  spreadRadius: 20,
                  blurRadius: 40,
                  offset: Offset(0, 20),
                ),
                BoxShadow(
                  color: MyColor.navSecondColor,
                  spreadRadius: 20,
                  blurRadius: 60,
                  offset: Offset(0, 5),
                )
              ]),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            width: 70,
            child: Container(
              padding: const EdgeInsets.only(top: 45, left: 25),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.black38,
                    Colors.black54,
                    MyColor.backColor
                  ])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back_ios_new,
                        size: 26, color: Colors.white70),
                  ),
                  const SizedBox(height: 15),
                  RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      'Living Room',
                      style: MyDimens().gettextColor(true),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
