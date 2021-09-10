import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:formz_riverpod/src/features/login/logic/login_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('River Formz'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [_Email(), _Password()],
        ),
      ),
    );
  }
}

class _Email extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final email =
        useProvider(loginNotifierProvider.select((state) => state.email));
    return TextFormField(
      onChanged: context.read(loginNotifierProvider.notifier).changeEmail,
      decoration: InputDecoration(
        labelText: 'Email',
        errorText: email.invalid ? email.error.toString() : null,
      ),
    );
  }
}

class _Password extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final password =
        useProvider(loginNotifierProvider.select((state) => state.password));
    return TextFormField(
      onChanged: context.read(loginNotifierProvider.notifier).changePassword,
      decoration: InputDecoration(
        labelText: 'Password',
        errorText: password.invalid ? password.error.toString() : null,
      ),
    );
  }
}
