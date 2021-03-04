import 'package:flutter/material.dart';
import 'package:flutter_web_practice/views/login_view.dart';

import 'core/framework/theme/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      darkTheme: darkTheme,
      title: 'Material App',
      home: LoginView(),
    );
  }
}
