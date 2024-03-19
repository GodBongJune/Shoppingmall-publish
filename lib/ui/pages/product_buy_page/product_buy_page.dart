import 'package:flutter/material.dart';

import 'product_buy_page_widget/product_buy_page_body.dart';
import 'product_buy_page_widget/product_buy_page_bottom_button.dart';

class ProductBuyPage extends StatelessWidget {
  const ProductBuyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("주문하기", style: TextStyle(fontWeight: FontWeight.normal)),
      ),
      body: ProductBuyPageBody(),
      bottomNavigationBar: ProductBuyPageBottomButton(),
    );
  }
}
