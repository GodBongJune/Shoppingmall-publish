import 'package:flutter/material.dart';
import 'package:shoppingmall/ui/pages/buy_list_page/buy_list_page_widget/buy_list_page_body.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/size.dart';

class BuyListPage extends StatelessWidget {
  const BuyListPage({super.key});

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
            "구매내역",
            style: TextStyle(
              color: kMainColor,
              fontSize: fontMedium,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
      body: BuyListPageBody(),
    );
  }
}
