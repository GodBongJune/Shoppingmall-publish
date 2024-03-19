import 'package:flutter/material.dart';
import '../../../../core/constant/color.dart';

class LoginPageUserEmail extends StatelessWidget {
  final TextEditingController appMemberEmail;

  LoginPageUserEmail({required this.appMemberEmail});

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
            controller: appMemberEmail,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "이메일을 입력해 주세요",
              hintStyle: TextStyle(fontSize: 13, color: kFontColor2),
            ),
            style: TextStyle(color: kFontColor2, decorationThickness: 0),
          ),
        ),
      ),
    );
  }
}
