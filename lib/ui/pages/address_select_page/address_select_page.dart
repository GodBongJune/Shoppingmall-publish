import 'package:flutter/material.dart';
import 'package:shoppingmall/ui/pages/address_select_page/address_select_page_widget/address_select_page_body.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/size.dart';

class AddressSelectPage extends StatelessWidget {
  const AddressSelectPage({super.key});

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
            "주소 설정",
            style: TextStyle(
                color: kMainColor,
                fontSize: fontMedium,
                fontWeight: FontWeight.normal),
          ),
        ),
      ),
      body: AddressSelectPageBody(),
    );
  }
}
