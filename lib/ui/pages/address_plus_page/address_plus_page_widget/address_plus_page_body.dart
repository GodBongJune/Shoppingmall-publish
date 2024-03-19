import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoppingmall/core/constant/move.dart';
import 'package:shoppingmall/core/constant/size.dart';

import '../../../../core/constant/color.dart';

class AddressPlusPageBody extends StatefulWidget {
  const AddressPlusPageBody({super.key});

  @override
  State<AddressPlusPageBody> createState() => _AddressPlusPageBodyState();
}

class _AddressPlusPageBodyState extends State<AddressPlusPageBody> {
  bool basicAddress = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          //받는사람
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "받는 사람",
                style: TextStyle(color: kMainColor, fontSize: fontRegular),
              ),
              SizedBox(height: 10),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: kFontColor2)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      style:
                          TextStyle(color: kFontColor2, decorationThickness: 0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
          //휴대폰 번호
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "휴대폰 번호",
                style: TextStyle(color: kMainColor, fontSize: fontRegular),
              ),
              SizedBox(height: 10),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: kFontColor2)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      style:
                          TextStyle(color: kFontColor2, decorationThickness: 0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
          //주소
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "주소",
                style: TextStyle(color: kMainColor, fontSize: fontRegular),
              ),
              SizedBox(height: 10),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: kFontColor2,
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Move.addressSearchPage);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(CupertinoIcons.search),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
          //기본 배송지
          InkWell(
            onTap: () {
              setState(() {
                basicAddress = !basicAddress;
              });
            },
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: kFontColor2),
                  ),
                  child: basicAddress
                      ? Icon(CupertinoIcons.check_mark,
                          color: kMainColor, size: 18)
                      : Container(),
                ),
                SizedBox(width: 8),
                Text(
                  "기본 배송지로 설정",
                  style: TextStyle(color: kMainColor, fontSize: fontRegular),
                ),
              ],
            ),
          ),
          SizedBox(height: 32),
          //저장버튼
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: kMainColor),
            width: double.infinity,
            child: TextButton(
              child: Text(
                "저장",
                style: TextStyle(
                    fontSize: fontRegular, fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(height: 8),
          //취소버튼
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.transparent,
              border: Border.all(color: kFontColor2),
            ),
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
    );
  }
}
