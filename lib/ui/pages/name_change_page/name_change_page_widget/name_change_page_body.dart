import 'package:flutter/material.dart';
import 'package:shoppingmall/core/constant/size.dart';

import '../../../../core/constant/color.dart';

class NameChangePageBody extends StatelessWidget {
  const NameChangePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Column(
            children: [
              //이름수정
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: kFontColor2)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "김영희",
                        hintStyle: TextStyle(fontSize: 13, color: kFontColor2),
                      ),
                      style:
                          TextStyle(color: kFontColor2, decorationThickness: 0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32),
              //이름변경버튼
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: kMainColor),
                width: double.infinity,
                child: TextButton(
                  child: Text(
                    "이름 변경",
                    style: TextStyle(
                        fontSize: fontRegular, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 8),
              //취소 버튼
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.transparent,
                  border: Border.all(color: kFontColor2),
                ),
                height: MediaQuery.of(context).size.height * 0.07,
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
              ),
            ],
          )
        ],
      ),
    );
  }
}
