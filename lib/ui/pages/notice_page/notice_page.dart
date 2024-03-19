import 'package:flutter/material.dart';
import 'package:shoppingmall/ui/pages/notice_page/notice_page_widget/notice_page_body.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/move.dart';

class NoticePage extends StatelessWidget {
  const NoticePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: kMainColor),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: NoticePageBody(),
    );
  }
}
