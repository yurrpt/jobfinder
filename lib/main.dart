import 'package:flutter/material.dart';

import 'login_form.dart';
import 'main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      routes: {
        '/': (context) => LoginForm(),
        LoginForm.route: (context) => LoginForm(),
        MainScreen.route: (context) => MainScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 0, 165, 11),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Color.fromARGB(255, 139, 0, 0),
        ),
      ),
      // home: MainScreen(),
    );
  }
}
