import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingmall/core/constant/size.dart';

import '../../../../core/constant/color.dart';

class PasswordUpdatePageBody extends StatefulWidget {
  const PasswordUpdatePageBody({Key? key}) : super(key: key);

  @override
  State<PasswordUpdatePageBody> createState() => _PasswordUpdatePageBodyState();
}

class _PasswordUpdatePageBodyState extends State<PasswordUpdatePageBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 10),
            //현재 비밀번호
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      child: Text(
                        "현재 비밀번호",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: fontRegular,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        obscureText: true,
                        style: TextStyle(decorationThickness: 0),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: kFontColor2),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: kFontColor2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: kFontColor2),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(thickness: 1, color: Colors.grey[200]),
            //새 비밀번호
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      child: Text(
                        "새 비밀번호",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: fontRegular,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        obscureText: true,
                        style: TextStyle(decorationThickness: 0),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: kFontColor2),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: kFontColor2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: kFontColor2),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(thickness: 1, color: Colors.grey[200]),
            //새 비밀번호 확인
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      child: Text(
                        "새 비밀번호 확인",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: fontRegular,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        obscureText: true,
                        style: TextStyle(decorationThickness: 0),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: kFontColor2),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: kFontColor2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: kFontColor2),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(thickness: 1, color: Colors.grey[200]),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "대문자,소문자,숫자,특수문자를 포함한 8글자 이상",
                  style: TextStyle(
                    color: kFontColor2,
                    fontSize: fontRegular,
                  ),
                ),
              ),
            ),
            //버튼
            Container(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    //비밀번호변경버튼
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: kMainColor),
                      width: double.infinity,
                      child: TextButton(
                        child: Text(
                          "비밀번호 변경",
                          style: TextStyle(
                              fontSize: fontRegular,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(height: 8),
                    //취소버튼
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent,
                        border: Border.all(color: kFontColor2),
                      ),
                      width: double.infinity,
                      child: TextButton(
                        child: Text(
                          "취소",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: fontRegular,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
