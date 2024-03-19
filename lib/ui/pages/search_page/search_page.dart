import 'package:flutter/material.dart';
import 'package:shoppingmall/ui/pages/search_page/search_page_widget/search_page_body.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SearchPageBody(),
        ),
      ),
    );
  }
}
