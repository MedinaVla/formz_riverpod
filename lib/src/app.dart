import 'package:flutter/material.dart';
import 'package:formz_riverpod/src/features/login/views/login_page.dart';

class FormzRiverpod extends StatelessWidget {
  const FormzRiverpod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: LoginPage(),
    );
  }
}
