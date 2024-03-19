import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingmall/core/constant/size.dart';

import '../../../../core/constant/color.dart';

class SearchPageBody extends StatefulWidget {
  const SearchPageBody({super.key});

  @override
  State<SearchPageBody> createState() => _SearchPageBodyState();
}

class _SearchPageBodyState extends State<SearchPageBody> {
  List<String> searchKeywords = ["인테리어", "인테이러 소품", "인테리어 의자", "원목 식탁"];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8),
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Center(
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: kMainColor),
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: kFontColor2,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                        bottom: 3,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: "검색어를 입력해주세요."),
                        style: TextStyle(
                          color: kFontColor2,
                          decorationThickness: 0,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    child: Text(
                      "취소",
                      style:
                          TextStyle(color: Colors.black, fontSize: fontMedium),
                    ),
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 10),
            child: Text("최근 검색어",
                style: TextStyle(
                    fontSize: fontRegular, fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: searchKeywords.map((keyword) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: TextButton(
                          style: ButtonStyle(
                            alignment: Alignment.centerLeft,
                          ),
                          child: Text(
                            keyword,
                            style: TextStyle(
                                fontSize: fontRegular, color: Colors.black),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(CupertinoIcons.xmark,
                          color: Colors.grey[500], size: 20),
                      onPressed: () {
                        // 삭제 로직 추가
                        removeSearchKeyword(keyword);
                      },
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  void removeSearchKeyword(String keyword) {
    setState(() {
      searchKeywords.remove(keyword);
    });
  }
}
