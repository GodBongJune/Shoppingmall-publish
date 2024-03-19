import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';
import '../../../../core/constant/size.dart';

class AnswerTab extends StatelessWidget {
  const AnswerTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  //문의제목1
                  Container(
                    child: ExpansionTile(
                      collapsedBackgroundColor: Colors.transparent,
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 18),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.13,
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: kMainColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "유형1",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ),
                              ),
                              SizedBox(width: 16),
                              Text(
                                "문의 제목1",
                                style: TextStyle(
                                  color: kMainColor,
                                  fontSize: fontRegular,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              Text(
                                "2023-10-30",
                                style: TextStyle(
                                  color: kFontColor2,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(width: 35),
                              Text(
                                "미답변",
                                style: TextStyle(
                                  color: kFontColor2,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 16),
                        ],
                      ),
                      children: [],
                    ),
                  ),
                  //문의제목2
                  Container(
                    child: ExpansionTile(
                      collapsedBackgroundColor: Colors.transparent,
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 18),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.13,
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: kMainColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "유형1",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ),
                              ),
                              SizedBox(width: 16),
                              Text(
                                "문의 제목2",
                                style: TextStyle(
                                  color: kMainColor,
                                  fontSize: fontRegular,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              Text(
                                "2023-10-30",
                                style: TextStyle(
                                  color: kFontColor2,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(width: 35),
                              Text(
                                "답변완료",
                                style: TextStyle(
                                  color: kFontColor4,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 16),
                        ],
                      ),
                      children: [
                        Container(
                          color: Colors.grey[100],
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(16, 32, 16, 5),
                                child: Text(
                                  "Q. Excepteur sint occaecat cupidatat non proident,"
                                  " sunt in culpa quiofficia deserunt mollit anim id est laborum."
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
                                  " sed doExcepteur sint occaecat cupidatat non proident, sunt in culpa qui\n"
                                  " officia deserunt mollit anim id est laborum.",
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontSize: fontRegular,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 16, bottom: 32),
                                    child: Text(
                                      "2023-08-03",
                                      style: TextStyle(
                                        color: kFontColor2,
                                        fontSize: 12,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
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
