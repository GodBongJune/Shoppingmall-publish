import 'package:flutter/material.dart';
import 'package:flutter_riverpod/src/consumer.dart';
import 'package:shoppingmall/data/dto/user_request.dart';
import 'package:shoppingmall/ui/pages/login_page/login_page_widget/login_page_user_email.dart';
import 'package:shoppingmall/ui/pages/login_page/login_page_widget/login_page_user_password.dart';

class LoginPageFormField extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController appMemberEmail;
  final TextEditingController appMemberPassword;

  LoginPageFormField({
    required this.appMemberEmail,
    required this.appMemberPassword,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            LoginPageUserEmail(appMemberEmail: appMemberEmail),
            SizedBox(height: 8),
            LoginPageUserPassword(appMemberPassword: appMemberPassword),
          ],
        ),
      ),
    );
  }
}
