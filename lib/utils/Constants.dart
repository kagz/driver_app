
import 'dart:ui';

class Constants{

//colors  231f51
  static const Color clr_purple = const Color(0xFF9C27B0);
  static const Color clr_blue = const Color(0xFF231f51);
  static const Color clr_red = const Color(0xFFF44336);
  static const Color clr_orange = const Color(0xFFFF682D);
  static const Color clr_light_grey = const Color(0xAAD3D3D3);

  static String isOnBoard= "IS_ONBOARD";
  static String isLoggedIn= "IS_LOGGED_IN";
  //Validations REGEX
  static final String PATTERN_EMAIL = "^([0-9a-zA-Z]([-.+\\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\\w]*[0-9a-zA-Z]\\.)+[a-zA-Z]{2,9})\$";
  static const String PHOTOSURL = "https://api.unsplash.com/";
  static const String PHOTOS = "comments";

  //URL For list of comments
  static const String accessKey = "f96abcd230664d7cab7ed900470db93878d44b15d672603e8c6817a267a96c78";
}