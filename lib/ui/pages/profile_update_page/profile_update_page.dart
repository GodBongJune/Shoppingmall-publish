import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/size.dart';
import 'profile_update_widget/profile_update_page_body.dart';

class ProfileUpdatePage extends StatelessWidget {
  const ProfileUpdatePage({super.key});

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
            "마이 페이지",
            style: TextStyle(
                color: kMainColor,
                fontSize: fontMedium,
                fontWeight: FontWeight.normal),
          ),
        ),
      ),
      body: ProfileUpdatePageBody(),
    );
  }
}
