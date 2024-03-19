import 'package:flutter/material.dart';
import 'package:shoppingmall/ui/pages/profile_page/profile_page_widget/profile_page_body.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/move.dart';
import '../../../core/constant/size.dart';

class ProfilePage extends StatelessWidget {
  final Function(int) onNavigateToPage;

  const ProfilePage({super.key, required this.onNavigateToPage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: ProfilePageBody(
        onNavigateToPage: (index) {
          onNavigateToPage(index);
        },
      ),
    );
  }
}
