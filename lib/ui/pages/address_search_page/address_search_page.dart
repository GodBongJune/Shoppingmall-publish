import 'package:flutter/material.dart';
import 'package:shoppingmall/ui/pages/address_search_page/address_search_page_widget/address_search_page_body.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/size.dart';

class AddressSearchPage extends StatelessWidget {
  const AddressSearchPage({super.key});

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
      body: AddressSearchPageBody(),
    );
  }
}
