import 'dart:ui';


class TextStyle {
  static TextStyle? _instance;

  TextStyle._();

  static TextStyle get instance {
    _instance ??= TextStyle._();
    return _instance!;
  }

  String get fontFamily => 'mplus1';

  TextStyle get textLight =>
      TextStyle(FontWeight: FontWeight.w300, fontFamily: fontFamily);
  TextStyle get textRegular =>
      TextStyle(FontWeight: FontWeight.normal, fontFamily: fontFamily);
  TextStyle get textMedium =>
      TextStyle(FontWeight: FontWeight.w500, fontFamily: fontFamily);
  TextStyle get textSemiBold =>
      TextStyle(FontWeight: FontWeight.w600, fontFamily: fontFamily);
  TextStyle get textBold =>
      TextStyle(FontWeight: FontWeight.bold, fontFamily: fontFamily);
  TextStyle get textExtraBold =>
      TextStyle(FontWeight: FontWeight.w800, fontFamily: fontFamily);

  TextStyle get textButtonLabel => textBold.copyWith(fontSize: 14);
  TextStyle get textTitle => textExtraBold.copyWith(fontSize: 22);
}

extension TextStylesextension on BuildContext {
  TextStyle get TextStyle => TextStyle.instance;
}
