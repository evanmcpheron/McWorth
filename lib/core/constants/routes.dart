import 'package:flutter/material.dart';
import 'package:scoopertrooper/features/auth/presentation/pages/login_page.dart';
import 'package:scoopertrooper/features/customer/presentation/pages/customer_home_page.dart';

class Routes {
  static const String initial = '/';
  static const String customerHome = '/customer/home';

  // Define your routes here
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      initial: (context) => LoginPage(),
      customerHome: (context) => CustomerHomePage(),
    };
  }
}
