import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDimens {
  TextStyle gettextColor(bool isReal) {
    return GoogleFonts.michroma(
      textStyle: TextStyle(
          fontSize: isReal ? 30 : 45,
          fontWeight: FontWeight.bold,
          foreground: Paint()
            ..shader = LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: isReal
                        ? [
                            const Color(0xFF1A92D2),
                            const Color(0xFF1A92D2),
                            const Color(0xFF913A84),
                            const Color(0xFFAE3370),
                          ]
                        : [
                            Colors.transparent,
                            Colors.transparent,
                            Colors.transparent,
                            Colors.white10,
                          ])
                .createShader(const Rect.fromLTWH(0, 0, 300, 100))),
    );
  }
}
