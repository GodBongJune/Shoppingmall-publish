import 'package:flutter/material.dart';
import 'package:shoppingmall/core/constant/size.dart';
import 'package:shoppingmall/ui/pages/find_email_page/find_email_page_widget/find_email_page_body.dart';

class FindEmailPage extends StatelessWidget {
  const FindEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "이메일 찾기",
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
      body: FindEmailPageBody(),
    );
  }
}
