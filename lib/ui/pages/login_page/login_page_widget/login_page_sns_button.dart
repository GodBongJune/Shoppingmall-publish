import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/store/session_store.dart';

class LoginPageSNSButton extends StatefulWidget {
  LoginPageSNSButton({super.key});

  @override
  State<LoginPageSNSButton> createState() => _LoginPageSNSButtonState();
}

class _LoginPageSNSButtonState extends State<LoginPageSNSButton> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: Image.asset("assets/sns/google.png"),
                onTap: () {},
              ),
              InkWell(
                child: Image.asset("assets/sns/naver.png"),
                onTap: () {},
              ),
              InkWell(
                child: Image.asset("assets/sns/kakao.png"),
                onTap: () {},
              ),
              InkWell(
                child: Image.asset("assets/sns/apple.png"),
                onTap: () {},
              ),
            ],
          ),
        );
      },
    );
  }
}
