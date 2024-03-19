import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoppingmall/core/constant/move.dart';
import 'package:shoppingmall/core/constant/size.dart';

import '../../../../core/constant/color.dart';

class AddressUpdatePageBody extends StatefulWidget {
  const AddressUpdatePageBody({super.key});

  @override
  State<AddressUpdatePageBody> createState() => _AddressUpdatePageBodyState();
}

class _AddressUpdatePageBodyState extends State<AddressUpdatePageBody> {
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
              // TextFormField(
              //   style: TextStyle(decorationThickness: 0),
              //   decoration: InputDecoration(
              //     hintStyle: TextStyle(color: kFontColor2),
              //     hintText: "엠바스",
              //     enabledBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(5),
              //       borderSide: BorderSide(color: kFontColor2),
              //     ),
              //     focusedBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(5),
              //       borderSide: BorderSide(color: kFontColor2),
              //     ),
              //   ),
              // ),
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
                        hintText: "엠바스",
                        hintStyle: TextStyle(fontSize: 13, color: kFontColor2),
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
              // TextFormField(
              //   style: TextStyle(decorationThickness: 0),
              //   keyboardType: TextInputType.phone, // 숫자 키패드 표시
              //   inputFormatters: <TextInputFormatter>[
              //     FilteringTextInputFormatter.digitsOnly, // 숫자만 입력 가능
              //   ],
              //   decoration: InputDecoration(
              //     hintText: "01000000000",
              //     hintStyle: TextStyle(color: kFontColor2),
              //     enabledBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(5),
              //       borderSide: BorderSide(color: kFontColor2),
              //     ),
              //     focusedBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(5),
              //       borderSide: BorderSide(color: kFontColor2),
              //     ),
              //   ),
              // ),
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
                        hintText: "01000000000",
                        hintStyle: TextStyle(fontSize: 13, color: kFontColor2),
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
                height: 60,
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            '(487322)부산광역시 동구 중앙대로236번길 7-5',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: kFontColor2,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        Icon(CupertinoIcons.search),
                      ],
                    ),
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
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: kMainColor),
            width: double.infinity,
            child: TextButton(
              child: Text(
                "수정",
                style: TextStyle(
                    fontSize: fontRegular, fontWeight: FontWeight.bold),
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
          ),
        ],
      ),
    );
  }
}
