import 'package:flutter/material.dart';
import 'package:shoppingmall/core/constant/color.dart';

class CategoryPageBody extends StatelessWidget {
  CategoryPageBody({Key? key}) : super(key: key);
  final List<String> categories = [
    "카테고리1",
    "카테고리2",
    "카테고리3",
    "카테고리4",
    "카테고리5",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(categories[index]),
              Icon(Icons.arrow_forward_ios, color: kFontColor2, size: 20),
            ],
          ),
          onTap: () {},
        );
      },
      separatorBuilder: (context, index) {
        return Container(
          color: Colors.grey[200],
          height: 1,
        );
      },
    );
  }
}
