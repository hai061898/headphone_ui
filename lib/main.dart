import 'package:flutter/material.dart';
import 'package:headphone/constants.dart';

import 'pages/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          iconTheme: IconThemeData(color: backgroundGrey, size: 36),
      ),
      home: HomeScreen(),
    );
  }
}