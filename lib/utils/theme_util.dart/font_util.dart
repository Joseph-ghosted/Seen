import 'package:google_fonts/google_fonts.dart';

String? getFontFamily(FontFamily family) {
  switch (family) {
    case GoogleFonts.poppins:
      return "poppins";

    case FontFamily.poppins:
    // TODO: Handle this case.
  }
  return null;
}

enum FontFamily { poppins }
