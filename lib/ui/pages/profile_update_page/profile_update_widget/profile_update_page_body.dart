import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingmall/core/constant/color.dart';
import 'package:shoppingmall/core/constant/move.dart';
import 'package:shoppingmall/core/constant/size.dart';

class ProfileUpdatePageBody extends StatefulWidget {
  const ProfileUpdatePageBody({Key? key}) : super(key: key);

  @override
  State<ProfileUpdatePageBody> createState() => _ProfileUpdatePageBodyState();
}

class _ProfileUpdatePageBodyState extends State<ProfileUpdatePageBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //이미지
            Container(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Image.asset("assets/profile/default.png"),
                      Positioned(
                        left: 25,
                        bottom: -12,
                        child: IconButton(
                          icon: Icon(
                            CupertinoIcons.plus_circle_fill,
                            color: kFontColor2,
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            //이름
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Move.nameChangePage);
                  },
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.16,
                        child: Text(
                          "이름",
                          style: TextStyle(
                            color: kMainColor,
                            fontSize: fontRegular,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        "김영희",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: fontRegular,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, color: kFontColor1),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Divider(thickness: 1, color: Colors.grey[200]),
            SizedBox(height: 16),
            //연락처
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Move.numberChangePage);
                  },
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.16,
                        child: Text(
                          "연락처",
                          style: TextStyle(
                            color: kMainColor,
                            fontSize: fontRegular,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "010-0000-0000",
                          style: TextStyle(
                            color: kMainColor,
                            fontSize: fontRegular,
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, color: kFontColor1),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Divider(thickness: 1, color: Colors.grey[200]),
            SizedBox(height: 16),
            //주소
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Move.addressSelectPage);
                  },
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.17,
                        child: Text(
                          "주소",
                          style: TextStyle(
                            color: kMainColor,
                            fontSize: fontRegular,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Text(
                            "부산광역시 동구 중앙대로 270, 3층 4호 (한국부동산원)",
                            style: TextStyle(
                              color: kMainColor,
                              fontSize: fontRegular,
                            ),
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios, color: kFontColor1),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Divider(thickness: 1, color: Colors.grey[200]),
            SizedBox(height: 16),
            //비밀번호
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Move.passwordUpdatePage);
                  },
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.17,
                        child: Text(
                          "비밀번호",
                          style: TextStyle(
                            color: kMainColor,
                            fontSize: fontRegular,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "**********",
                          style: TextStyle(
                            color: kMainColor,
                            fontSize: fontRegular,
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, color: kFontColor1),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Divider(thickness: 1, color: Colors.grey[200]),
            SizedBox(height: 16),
          ],
        ),
      ],
    );
  }
}
