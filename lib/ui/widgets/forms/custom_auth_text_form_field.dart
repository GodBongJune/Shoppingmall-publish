import 'package:flutter/material.dart';
import 'package:shoppingmall/core/constant/color.dart';

class CustomAuthTextFormField extends StatelessWidget {
  final String text;
  final bool obscureText;

  const CustomAuthTextFormField({
    Key? key,
    required this.text,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: "$text 입력해 주세요",
            hintStyle: TextStyle(color: kFontColor2),
            enabledBorder: OutlineInputBorder(
              // 3. 기본 TextFormField 디자인
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: kFontColor2),
            ),
            focusedBorder: OutlineInputBorder(
              // 4. 손가락 터치시 TextFormField 디자인
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: kFontColor2),
            ),
            // errorBorder: OutlineInputBorder(
            //   // 5. 에러발생시 TextFormField 디자인
            //   borderRadius: BorderRadius.circular(5),
            //   borderSide: BorderSide(color: kFontColor2),
            // ),
            // focusedErrorBorder: OutlineInputBorder(
            //   // 5. 에러가 발생 후 손가락을 터치했을 때 TextFormField 디자인
            //   borderRadius: BorderRadius.circular(5),
            //   borderSide: BorderSide(color: kFontColor2),
            // ),
          ),
        ),
      ],
    );
  }
}
