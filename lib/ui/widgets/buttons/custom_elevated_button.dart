import 'package:flutter/material.dart';
import 'package:shoppingmall/core/constant/color.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final funPageRoute;

  const CustomElevatedButton({
    required this.text,
    required this.funPageRoute,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: kMainColor,
          fixedSize: Size(360, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Text("${text}", style: TextStyle(color: Colors.white)),
        onPressed: () {});
  }
}
