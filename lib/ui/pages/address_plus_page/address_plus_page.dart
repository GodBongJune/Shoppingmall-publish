import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/size.dart';
import 'address_plus_page_widget/address_plus_page_body.dart';

class AddressPlusPage extends StatelessWidget {
  const AddressPlusPage({super.key});

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
      body: AddressPlusPageBody(),
    );
  }
}
