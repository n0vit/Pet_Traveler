import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomThemes {
  static ThemeData get lightTheme {
    return ThemeData(
        colorSchemeSeed: const  Color(0xFFCE817B),useMaterial3: true);
  }

  static ThemeData get darkTheme {
    return ThemeData(brightness: Brightness.dark,
        colorSchemeSeed: const Color(0xFFCE817B),useMaterial3: true);
  }
}

class CustomTypography {
  static final titleOnBoard = GoogleFonts.nunito(
      fontWeight: FontWeight.bold, fontSize: 28, color: Colors.black);
  static final titleOnBoardBig = GoogleFonts.poppins(
      fontWeight: FontWeight.bold, fontSize: 40, color: Colors.black);
  static final titleOnBoardMedium = GoogleFonts.poppins(
      fontWeight: FontWeight.w400, fontSize: 22, color: Colors.black);
  static final titleOnBoardSmall = GoogleFonts.poppins(
      fontWeight: FontWeight.w400, fontSize: 18, color: Colors.grey);
  static final titleOnBoardCaption = GoogleFonts.poppins(
      fontWeight: FontWeight.normal, fontSize: 16, color: Colors.black);
  static final titleOnBoardOther = GoogleFonts.inter(
      fontWeight: FontWeight.w300, fontSize: 18, color: Colors.black);
  static final textOnBoard = GoogleFonts.poppins(
      fontWeight: FontWeight.normal, fontSize: 14, color: Colors.black);

  static final titleBig = GoogleFonts.nunito(
      fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black);
  static final titleMedium = GoogleFonts.nunito(
      fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black);
  static final titleSmall = GoogleFonts.nunito(
      fontWeight: FontWeight.w400, fontSize: 10, color: Colors.black);
  static final price = GoogleFonts.nunito(
      fontWeight: FontWeight.bold, fontSize: 26, color: Colors.black);
  static final text = GoogleFonts.nunito(
      fontWeight: FontWeight.normal, fontSize: 14, color: Colors.grey);
}
const lightColorScheme = ColorScheme(
  brightness : Brightness.light,
  primary : Color(0xFF006C49),
  onPrimary : Color(0xFFFFFFFF),
  primaryContainer : Color(0xFF8CF7C3),
  onPrimaryContainer : Color(0xFF002113),
  secondary : Color(0xFF4D6357),
  onSecondary : Color(0xFFFFFFFF),
  secondaryContainer : Color(0xFFD0E8D8),
  onSecondaryContainer : Color(0xFF0A1F16),
  tertiary : Color(0xFF3D6473),
  onTertiary : Color(0xFFFFFFFF),
  tertiaryContainer : Color(0xFFC0E9FA),
  onTertiaryContainer : Color(0xFF001F29),
  error : Color(0xFFBA1A1A),
  errorContainer : Color(0xFFFFDAD6),
  onError : Color(0xFFFFFFFF),
  onErrorContainer : Color(0xFF410002),
  background : Color(0xFFFBFDF9),
  onBackground : Color(0xFF191C1A),
  surface : Color(0xFFFBFDF9),
  onSurface : Color(0xFF191C1A),
  surfaceVariant : Color(0xFFDCE5DD),
  onSurfaceVariant : Color(0xFF404943),
  outline : Color(0xFF707973),
  onInverseSurface : Color(0xFFEFF1ED),
  inverseSurface : Color(0xFF2E312F),
  inversePrimary : Color(0xFF6FDBA8),
  shadow : Color(0xFF000000),
  surfaceTint : Color(0xFF006C49),
);

const darkColorScheme = ColorScheme(
  brightness : Brightness.dark,
  primary : Color(0xFF6FDBA8),
  onPrimary : Color(0xFF003824),
  primaryContainer : Color(0xFF005236),
  onPrimaryContainer : Color(0xFF8CF7C3),
  secondary : Color(0xFFB4CCBD),
  onSecondary : Color(0xFF20352A),
  secondaryContainer : Color(0xFF364B40),
  onSecondaryContainer : Color(0xFFD0E8D8),
  tertiary : Color(0xFFA5CDDE),
  onTertiary : Color(0xFF063543),
  tertiaryContainer : Color(0xFF244C5A),
  onTertiaryContainer : Color(0xFFC0E9FA),
  error : Color(0xFFFFB4AB),
  errorContainer : Color(0xFF93000A),
  onError : Color(0xFF690005),
  onErrorContainer : Color(0xFFFFDAD6),
  background : Color(0xFF191C1A),
  onBackground : Color(0xFFE1E3DF),
  surface : Color(0xFF191C1A),
  onSurface : Color(0xFFE1E3DF),
  surfaceVariant : Color(0xFF404943),
  onSurfaceVariant : Color(0xFFC0C9C1),
  outline : Color(0xFF8A938C),
  onInverseSurface : Color(0xFF191C1A),
  inverseSurface : Color(0xFFE1E3DF),
  inversePrimary : Color(0xFF006C49),
  shadow : Color(0xFF000000),
  surfaceTint : Color(0xFF6FDBA8),
);
