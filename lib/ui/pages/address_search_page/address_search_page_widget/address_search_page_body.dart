import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoppingmall/core/constant/size.dart';

import '../../../../core/constant/color.dart';

class AddressSearchPageBody extends StatefulWidget {
  const AddressSearchPageBody({super.key});

  @override
  State<AddressSearchPageBody> createState() => _AddressSearchPageBodyState();
}

class _AddressSearchPageBodyState extends State<AddressSearchPageBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Column(
            children: [
              //주소검색창
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: TextFormField(
                        style: TextStyle(decorationThickness: 0),
                        decoration: InputDecoration(
                          hintText: "도로명, 건물명, 번지 검색",
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
                    SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: kMainColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: IconButton(
                          icon:
                              Icon(CupertinoIcons.search, color: Colors.white),
                          onPressed: () {},
                        ),
                      ),
                    )
                  ],
                ),
              ),
              //검색팁
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "우편번호 통합검색 Tip",
                      style: TextStyle(
                        color: kMainColor,
                        fontSize: fontRegular,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      " • 도로명 + 건물번호 (예 : 중앙대로 270)",
                      style: TextStyle(
                        color: kMainColor,
                        fontSize: fontRegular,
                      ),
                    ),
                    Text(
                      " • 동/읍/면/리 + 번지 (예 : 초량동 1169-3)",
                      style: TextStyle(
                        color: kMainColor,
                        fontSize: fontRegular,
                      ),
                    ),
                    Text(
                      " • 건물명, 아파트명 (예 : 한국부동산원빌딩)",
                      style: TextStyle(
                        color: kMainColor,
                        fontSize: fontRegular,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
