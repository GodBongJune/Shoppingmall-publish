import 'package:flutter/material.dart';
import 'package:shoppingmall/ui/pages/product_detail_page/product_detail_page_widget/product_detail_page_body.dart';
import 'package:shoppingmall/ui/pages/product_detail_page/product_detail_page_widget/product_detail_page_bottom_button.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductDetailPageBody(),
      bottomNavigationBar: ProductDetailPageBottomButton(),
    );
  }
}
