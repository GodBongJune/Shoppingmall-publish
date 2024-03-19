import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';
import '../../../../core/constant/size.dart';

class FrequantlyTab extends StatelessWidget {
  const FrequantlyTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[100],
                      ),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.07,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Icon(
                              CupertinoIcons.search,
                              color: Colors.grey[500],
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              style: TextStyle(decorationThickness: 0),
                              decoration: InputDecoration(
                                hintText: "궁금하신 점을 검색해 주세요.",
                                hintStyle: TextStyle(
                                  color: Colors.grey[500],
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: ExpansionTile(
                      collapsedBackgroundColor: Colors.transparent,
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15),
                                  ),
                                  color: kMainColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "제품문의",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: 5),
                              Text(
                                "Q",
                                style: TextStyle(
                                    color: kMainColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 10),
                              Container(
                                child: Expanded(
                                  child: Text(
                                    "자주하는질문 제목 내용 입니다.",
                                    style: TextStyle(
                                      color: kMainColor,
                                      fontSize: fontRegular,
                                    ),
                                  ),
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
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 20, 16, 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "A",
                                  style: TextStyle(
                                      color: kMainColor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  child: Expanded(
                                    child: Text(
                                      "Excepteur sint occaecat cupidatat non\n"
                                      "proident, sunt in culpa qui officia deserunt\n"
                                      "mollit anim id est laborum.\n\n"
                                      "officia deserunt mollit anim id est\nlaborum.",
                                      style: TextStyle(
                                        color: kMainColor,
                                        fontSize: fontRegular,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: ExpansionTile(
                      collapsedBackgroundColor: Colors.transparent,
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15),
                                  ),
                                  color: kMainColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "제품문의",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: 5),
                              Text(
                                "Q",
                                style: TextStyle(
                                    color: kMainColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 10),
                              Container(
                                child: Expanded(
                                  child: Text(
                                    "자주하는질문 제목 내용 입니다.",
                                    style: TextStyle(
                                      color: kMainColor,
                                      fontSize: fontRegular,
                                    ),
                                  ),
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
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 32, 16, 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "A",
                                  style: TextStyle(
                                      color: kMainColor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  child: Expanded(
                                    child: Text(
                                      "Excepteur sint occaecat cupidatat non\n"
                                      "proident, sunt in culpa qui officia deserunt\n"
                                      "mollit anim id est laborum.\n\n"
                                      "officia deserunt mollit anim id est\nlaborum.",
                                      style: TextStyle(
                                        color: kMainColor,
                                        fontSize: fontRegular,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: ExpansionTile(
                      collapsedBackgroundColor: Colors.transparent,
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15),
                                  ),
                                  color: kMainColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "이용문의",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: 5),
                              Text(
                                "Q",
                                style: TextStyle(
                                    color: kMainColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 10),
                              Container(
                                child: Expanded(
                                  child: Text(
                                    "자주하는질문 제목 내용 입니다.",
                                    style: TextStyle(
                                      color: kMainColor,
                                      fontSize: fontRegular,
                                    ),
                                  ),
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
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 32, 16, 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "A",
                                  style: TextStyle(
                                      color: kMainColor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  child: Expanded(
                                    child: Text(
                                      "Excepteur sint occaecat cupidatat non\n"
                                      "proident, sunt in culpa qui officia deserunt\n"
                                      "mollit anim id est laborum.\n\n"
                                      "officia deserunt mollit anim id est\nlaborum.",
                                      style: TextStyle(
                                        color: kMainColor,
                                        fontSize: fontRegular,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: ExpansionTile(
                      collapsedBackgroundColor: Colors.transparent,
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15),
                                  ),
                                  color: kMainColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "제안건의",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: 5),
                              Text(
                                "Q",
                                style: TextStyle(
                                    color: kMainColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 10),
                              Container(
                                child: Expanded(
                                  child: Text(
                                    "자주하는질문 제목 내용 입니다.",
                                    style: TextStyle(
                                      color: kMainColor,
                                      fontSize: fontRegular,
                                    ),
                                  ),
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
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 32, 16, 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "A",
                                  style: TextStyle(
                                      color: kMainColor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  child: Expanded(
                                    child: Text(
                                      "Excepteur sint occaecat cupidatat non\n"
                                      "proident, sunt in culpa qui officia deserunt\n"
                                      "mollit anim id est laborum.\n\n"
                                      "officia deserunt mollit anim id est\nlaborum.",
                                      style: TextStyle(
                                        color: kMainColor,
                                        fontSize: fontRegular,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: ExpansionTile(
                      collapsedBackgroundColor: Colors.transparent,
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15),
                                  ),
                                  color: kMainColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "기타",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: 5),
                              Text(
                                "Q",
                                style: TextStyle(
                                    color: kMainColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 10),
                              Container(
                                child: Expanded(
                                  child: Text(
                                    "자주하는질문 제목 내용 입니다.\n2줄의 경우",
                                    style: TextStyle(
                                      color: kMainColor,
                                      fontSize: fontRegular,
                                    ),
                                  ),
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
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 32, 16, 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "A",
                                  style: TextStyle(
                                      color: kMainColor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  child: Expanded(
                                    child: Text(
                                      "Excepteur sint occaecat cupidatat non\n"
                                      "proident, sunt in culpa qui officia deserunt\n"
                                      "mollit anim id est laborum.\n\n"
                                      "officia deserunt mollit anim id est\nlaborum.",
                                      style: TextStyle(
                                        color: kMainColor,
                                        fontSize: fontRegular,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
