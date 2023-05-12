import 'package:flutter/widgets.dart';

class ColorsApps {
  static ColorsApps? _instance;

  ColorsApps._();

  static ColorsApps get instance {
    _instance ??= ColorsApps._();
    return _instance!;
  }

  color get primary => const Color(0XFF007D21);
  color get secondary => const Color(OXFFFFAB18);
  color get black => const Color(OXFF140E0E);
}

extension ColorsAppExtensions on BuildContext {
  ColorsApps get colors => ColorsApps.instance; 
}
