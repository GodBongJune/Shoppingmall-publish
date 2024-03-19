import 'package:flutter/material.dart';
import 'package:shoppingmall/core/constant/color.dart';
import 'package:shoppingmall/core/constant/size.dart';

class NoticePageBody extends StatelessWidget {
  const NoticePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("공지사항",
                      style: TextStyle(
                          color: kMainColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 16),
                  Text(
                    "{앱이름}에서 전하는 새로운 소식을 확인하세요.",
                    style: TextStyle(color: kFontColor1, fontSize: fontRegular),
                  ),
                  SizedBox(height: 32),
                  Divider(thickness: 1, color: Colors.black),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ExpansionTile(
                        collapsedBackgroundColor: Colors.transparent,
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "[공지] 공지사항 제목 안내",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: fontMedium,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "2023-10-30",
                              style: TextStyle(
                                color: kFontColor2,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 16),
                          ],
                        ),
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text("안녕하세요. 엠바스 마켓입니다.\n\n"
                                  "본 개인정보처리방침의 목차는 아래와 같습니다.\n\n"
                                  "관계법령이 요구하는 개인정보처리방침의 필수 사항과 mBaaS.Market 자체적으로 이용자 개인정보 보호에 있어 중요하게 판단하는 내용을 포함하였습니다."),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ExpansionTile(
                        collapsedBackgroundColor: Colors.transparent,
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "[업데이트] 공지사항 제목 안내",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: fontMedium,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "2023-10-30",
                              style: TextStyle(
                                color: kFontColor2,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 16),
                          ],
                        ),
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text("안녕하세요. 엠바스 마켓입니다.\n\n"
                                  "본 개인정보처리방침의 목차는 아래와 같습니다.\n\n"
                                  "관계법령이 요구하는 개인정보처리방침의 필수 사항과 mBaaS.Market 자체적으로 이용자 개인정보 보호에 있어 중요하게 판단하는 내용을 포함하였습니다."),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ExpansionTile(
                        collapsedBackgroundColor: Colors.transparent,
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "[공지] 공지사항 제목 안내",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: fontMedium,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "2023-10-30",
                              style: TextStyle(
                                color: kFontColor2,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 16),
                          ],
                        ),
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text("안녕하세요. 엠바스 마켓입니다.\n\n"
                                  "본 개인정보처리방침의 목차는 아래와 같습니다.\n\n"
                                  "관계법령이 요구하는 개인정보처리방침의 필수 사항과 mBaaS.Market 자체적으로 이용자 개인정보 보호에 있어 중요하게 판단하는 내용을 포함하였습니다."),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
