import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  final Color color;
  const Logo({
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'ShopKarlo',
          style: GoogleFonts.notoSansImperialAramaic(
            color: color,
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
        Text(
          '.com',
          style: GoogleFonts.roboto(
            color: color,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
