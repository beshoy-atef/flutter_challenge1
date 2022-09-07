import 'package:flutter/material.dart';
import 'package:login_ui/screens/login_page.dart';

void main() {
  runApp(const loginUi());
}

// ignore: camel_case_types
class loginUi extends StatelessWidget {
  const loginUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginpage(),
    );
  }
}
