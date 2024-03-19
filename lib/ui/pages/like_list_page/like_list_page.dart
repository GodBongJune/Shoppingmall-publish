import 'package:flutter/material.dart';
import 'package:shoppingmall/ui/pages/like_list_page/like_list_page_widget/like_list_page_body.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/move.dart';
import '../../../core/constant/size.dart';

class LikeListPage extends StatelessWidget {
  const LikeListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Text(
            "찜 목록",
            style: TextStyle(
                color: kMainColor,
                fontSize: fontMedium,
                fontWeight: FontWeight.normal),
          ),
        ),
      ),
      body: LikeListPageBody(),
    );
  }
}
