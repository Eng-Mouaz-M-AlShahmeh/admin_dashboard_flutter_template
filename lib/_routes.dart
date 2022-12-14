// /* Developed by Eng Mouaz M AlShahmeh */
// import 'package:flutter/material.dart';
// import 'package:admin_dashboard_template/screens/login/login_screen.dart';
// import 'package:admin_dashboard_template/screens/home/home_screen.dart';
//
// class Routes {
//   Routes._();
//
//   static const String login = '/login';
//   static const String home = '/home';
//
//   static final routes = <String, WidgetBuilder>{
//     login: (BuildContext context) => const Login(
//       title: '',
//     ),
//     home: (BuildContext context) => const HomeScreen(),
//   };
// }
//
// Route<dynamic> onGenerateRoute(RouteSettings settings) {
//   switch (settings.name) {
//     case "/":
//       return MaterialPageRoute(builder: (BuildContext context) {
//         return const HomeScreen();
//       });
//     default:
//       return MaterialPageRoute(builder: (BuildContext context) {
//         return const Login(title: "Hello");
//       });
//   }
// }