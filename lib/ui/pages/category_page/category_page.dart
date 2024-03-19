import 'package:flutter/material.dart';
import 'package:shoppingmall/core/constant/size.dart';
import 'package:shoppingmall/ui/pages/category_page/category_page_widget/category_page_body.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/move.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Text(
            "카테고리",
            style: TextStyle(
                color: kMainColor,
                fontSize: fontMedium,
                fontWeight: FontWeight.normal),
          ),
        ),
      ),
      body: CategoryPageBody(),
    );
  }
}
