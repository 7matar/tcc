// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app/views/home_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) => runApp(MyApp()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          accentColor: Colors.transparent,
        ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: Color.fromARGB(255, 143, 142, 142),
            fontSize: 15,
          ),
          headline6: TextStyle(
            color: Color.fromARGB(150, 255, 255, 255),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          bodyText1: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 17,
          ),
          subtitle2: TextStyle(
            color: Color.fromARGB(100, 255, 255, 255),
            fontSize: 12,
          ),
          headline5: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 28,
          ),
        ),
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
    );
  }
}
