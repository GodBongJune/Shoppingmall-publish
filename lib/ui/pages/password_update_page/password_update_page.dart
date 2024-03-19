import 'package:flutter/material.dart';
import 'package:shoppingmall/ui/pages/password_update_page/password_update_page_widget/password_update_page_body.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/size.dart';

class PasswordUpdatePage extends StatelessWidget {
  const PasswordUpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: kMainColor),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Container(
          child: Text(
            "비밀번호 수정",
            style: TextStyle(
                color: kMainColor,
                fontSize: fontMedium,
                fontWeight: FontWeight.normal),
          ),
        ),
      ),
      body: PasswordUpdatePageBody(),
    );
  }
}
