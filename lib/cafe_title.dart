import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


// cafe name and branding consistent throughout
class CafeTitle extends StatelessWidget {
  const CafeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'A Brand ',
            style: GoogleFonts.playfairDisplay(
              color: Colors.brown,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: 'Brew ',
            style: GoogleFonts.molle(
              color: Colors.brown,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: 'Day',
            style: GoogleFonts.playfairDisplay(
              color: Colors.brown,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}