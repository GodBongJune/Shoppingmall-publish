import 'package:flutter/material.dart';
import 'package:shoppingmall/core/constant/color.dart';
import 'package:shoppingmall/core/constant/size.dart';

class ProductBuyPageBottomButton extends StatelessWidget {
  const ProductBuyPageBottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: kMainColor,
          ),
          height: MediaQuery.of(context).size.height * 0.075,
          width: double.infinity,
          child: TextButton(
              child: Text(
                "결제하기",
                style: TextStyle(
                  fontSize: fontMedium,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
      ),
    );
  }
}
