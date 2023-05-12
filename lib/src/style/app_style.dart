import 'package:flutter/material.dart';

class AppStyle {
  static AppStyle? _instance;

  AppStyle._();

  static AppStyle get instance {
    _instance ??= AppStyle._();
    return _instance!;
  }

  ButtonStyle get primaryButton => ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        backgroundColor: ColorsApp.instance.primary,
        //textStyle:
      );
}

extension AppStylesExtension on BuildContext {
  AppStyles get AppStyles => AppStyles.instance;
}
