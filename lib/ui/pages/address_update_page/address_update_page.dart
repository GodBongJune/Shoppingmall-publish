import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/size.dart';
import 'address_update_page_widget/address_update_page_body.dart';

class AddressUpdatePage extends StatelessWidget {
  const AddressUpdatePage({super.key});

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
      body: AddressUpdatePageBody(),
    );
  }
}
