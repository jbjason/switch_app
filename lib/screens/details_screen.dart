import 'package:flutter/material.dart';
import 'package:switch_app/constants/sw_constatns.dart';
import 'package:switch_app/widgets/details_widgets/details_body_top.dart';
import 'package:switch_app/widgets/details_widgets/details_device_container.dart';
import 'package:switch_app/widgets/details_widgets/details_temp_container.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backColor,
      body: Column(
        children: [
          SizedBox(
            height: size.height * .82,
            width: size.width,
            child: Column(
              children: [
                const Expanded(child: DetailsBodyTop()),
                DetailsDeviceContainer(
                  height: size.height * .35,
                  width: size.width,
                ),
              ],
            ),
          ),
          const Expanded(child: DetailsTempContainer()),
        ],
      ),
    );
  }
}
