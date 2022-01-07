import 'package:flutter/material.dart';

import 'home_page/home_page.dart';

class RouterGenerate {
  static generateRouter(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => HomePage());
    }
  }
}
