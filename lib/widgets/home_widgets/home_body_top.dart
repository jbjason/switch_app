import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:switch_app/constants/my_dimens.dart';
import 'package:switch_app/constants/my_image.dart';

class HomeBodyTop extends StatelessWidget {
  const HomeBodyTop({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.none,
      children: [
        // shadow text
        Positioned(
          left: 70,
          top: 0,
          child: RotatedBox(
            quarterTurns: 1,
            child: Text('Pendant Light', style: MyDimens().gettextColor(false)),
          ),
        ),
        // Real Text
        Positioned(
          left: 25,
          top: 100,
          child: RotatedBox(
            quarterTurns: 1,
            child: Text('Pendant Light', style: MyDimens().gettextColor(true)),
          ),
        ),
        // Light img at left
        Positioned(
          top: -120,
          left: -90,
          height: size.height * .5,
          child: Image.asset(MyImage.light2, fit: BoxFit.cover),
        ),
        // Light img at right
        Positioned(
          top: -40,
          right: -100,
          height: size.height * .48,
          child: Image.asset(MyImage.light2, fit: BoxFit.cover),
        ),
        // middle img
        Positioned(
          top: 30,
          right: 10,
          height: size.height * .5,
          child: Image.asset(MyImage.light2, fit: BoxFit.cover),
        ),
        // Appbar
        Positioned(
          top: 45,
          right: 25,
          child: const Icon(CupertinoIcons.square_grid_2x2,
              size: 32, color: Colors.white70),
        ),
      ],
    );
  }
}
