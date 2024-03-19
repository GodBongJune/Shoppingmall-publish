import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingmall/core/constant/color.dart';
import 'package:shoppingmall/core/constant/move.dart';
import 'package:shoppingmall/core/constant/size.dart';

class ProductDetailPageBottomButton extends StatefulWidget {
  const ProductDetailPageBottomButton({super.key});

  @override
  State<ProductDetailPageBottomButton> createState() =>
      _ProductDetailPageBottomButtonState();
}

class _ProductDetailPageBottomButtonState
    extends State<ProductDetailPageBottomButton> {
  bool productLike = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          IconButton(
              icon: Icon(
                productLike ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                color: kFontColor4,
              ),
              onPressed: () {
                setState(() {
                  productLike = !productLike;
                });
              }),
          SizedBox(width: 5),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: kMainColor,
                borderRadius: BorderRadius.circular(5),
              ),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.07,
              child: TextButton(
                child: Text(
                  "구매하기",
                  style: TextStyle(
                      fontSize: fontRegular, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Move.productBuyPage);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
