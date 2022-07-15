import 'package:flutter/widgets.dart';

class Constants{
  get getBoard  {return OnBoardingConstants;}

}




class BookNowOverView {
  static const  List<String> photos = ['https://images.unsplash.com/photo-1511739001486-6bfe10ce785f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
  'https://images.unsplash.com/photo-1471623320832-752e8bbf8413?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=705&q=80',
  'https://images.unsplash.com/photo-1551634979-2b11f8c946fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
  'https://images.unsplash.com/photo-1581262177533-1b1760b87952?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=662&q=80',
  'https://images.unsplash.com/photo-1585944285854-d06c019aaca3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
  'https://images.unsplash.com/photo-1590893322091-473316efeb78?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MzJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'];
}

class SocialIcons {
  SocialIcons._();

  static const _kFontFam = 'SocialIcons';
  static const String? _kFontPkg = null;

  static const IconData apple = IconData(0xf179, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData google = IconData(0xf1a0, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}


class OnBoardingConstants {
 static const String onBoardImage1 ='assets/images/mountain.png';
 static const String onBoardImage2 ='assets/images/destination.png';
 static const String onBoardImage3 ='assets/images/travelling.png';
}


class SocialNetworks{
  static const google = 'Google';
  static const  apple = 'Apple';
}

class CongratsConstants {
static const String doneImage = 'assets/images/Done.png';
}


class CategoriesImage {
  static const String hotelCategory = 'assets/Icons/home.png';
  static const String tripCategory = 'assets/Icons/plane.png';
  static const String transportCategory = 'assets/Icons/bus.png';
}