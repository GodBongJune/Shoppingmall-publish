import 'package:flutter/material.dart';
import 'package:shoppingmall/ui/pages/login_page/login_page_widget/login_page_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LOGIN")),
      body: LoginPageBody(),
    );
  }
}
