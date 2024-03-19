import 'package:flutter/material.dart';
import 'package:shoppingmall/core/constant/move.dart';
import 'package:shoppingmall/core/constant/size.dart';

import '../../../../core/constant/color.dart';

class AddressSelectPageBody extends StatelessWidget {
  const AddressSelectPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "배송지 설정",
                style: TextStyle(
                  color: kMainColor,
                  fontSize: fontMedium,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("기본 배송지"),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Move.addressUpdatePage);
                },
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "엠바스",
                            style: TextStyle(
                              color: kMainColor,
                              fontSize: fontRegular,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("(487322)부산광역시 동구 중앙대로236번길 7-5"),
                          Text("010-1234-5678"),
                        ],
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: kFontColor2),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Divider(thickness: 1, color: Colors.grey[200]),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Move.addressUpdatePage);
                },
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "엠바스",
                            style: TextStyle(
                              color: kMainColor,
                              fontSize: fontRegular,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("(487322)부산광역시 동구 중앙대로236번길 7-5"),
                          Text("010-1234-5678"),
                        ],
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: kFontColor2),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Divider(thickness: 1, color: Colors.grey[200]),
              SizedBox(height: 32),
              //주소추가버튼
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: kFontColor2),
                ),
                child: TextButton(
                  child: Text(
                    "+ 새 주소 추가하기",
                    style: TextStyle(
                      color: kMainColor,
                      fontSize: fontRegular,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, Move.addressPlusPage);
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
