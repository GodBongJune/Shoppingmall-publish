import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/size.dart';
import 'number_change_page_widget/name_change_page_body.dart';

class NumberChangePage extends StatelessWidget {
  const NumberChangePage({super.key});

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
            "연락처 수정",
            style: TextStyle(
                color: kMainColor,
                fontSize: fontMedium,
                fontWeight: FontWeight.normal),
          ),
        ),
      ),
      body: NumberChangePageBody(),
    );
  }
}
