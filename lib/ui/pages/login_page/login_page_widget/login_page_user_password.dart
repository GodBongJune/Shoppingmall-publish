import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';

class LoginPageUserPassword extends StatelessWidget {
  final TextEditingController appMemberPassword;

  LoginPageUserPassword({required this.appMemberPassword});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.075,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: kFontColor2)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: TextFormField(
            controller: appMemberPassword,
            obscureText: true,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "대문자,소문자,숫자,특수문자를 포함한 8글자 이상",
              hintStyle: TextStyle(fontSize: 13, color: kFontColor2),
            ),
            style: TextStyle(color: kFontColor2, decorationThickness: 0),
          ),
        ),
      ),
    );
  }
}
