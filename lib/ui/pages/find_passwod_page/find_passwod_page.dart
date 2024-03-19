import 'package:flutter/material.dart';
import 'package:shoppingmall/ui/pages/find_passwod_page/find_passwod_page_widget/find_passwod_page_body.dart';

import '../../../core/constant/size.dart';

class FindPasswordPage extends StatelessWidget {
  const FindPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "비밀번호 찾기",
          style: TextStyle(
            color: Colors.black,
            fontSize: fontMedium,
            fontWeight: FontWeight.normal,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: FindPasswordPageBody(),
    );
  }
}
