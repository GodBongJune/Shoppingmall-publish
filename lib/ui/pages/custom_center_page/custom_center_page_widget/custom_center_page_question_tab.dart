import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingmall/core/constant/color.dart';
import 'package:shoppingmall/core/constant/size.dart';

class QuestionTab extends StatefulWidget {
  const QuestionTab({Key? key}) : super(key: key);

  @override
  _QuestionTabState createState() => _QuestionTabState();
}

class _QuestionTabState extends State<QuestionTab> {
  bool agree = false;

  // 기본값 설정
  String selectedQuestion = "유형을 선택해주세요";

  @override
  Widget build(BuildContext context) {
    List<String> questionList = ["유형을 선택해주세요", "환불", "택배", "기타"];

    return ListView(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //유형
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "유형",
                            style: TextStyle(
                              color: kMainColor,
                              fontSize: fontRegular,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "*",
                            style: TextStyle(color: kFontColor4, fontSize: 10),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: kFontColor3,
                          ),
                        ),
                        child: DropdownButton<String>(
                          underline: SizedBox.shrink(),
                          value: selectedQuestion,
                          style: TextStyle(color: kMainColor),
                          items: questionList.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    color: value == "유형을 선택해주세요"
                                        ? kFontColor3
                                        : kMainColor,
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedQuestion = newValue!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                //연락처
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "연락처",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: fontRegular,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: TextFormField(
                          style: TextStyle(decorationThickness: 0),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: kFontColor3),
                            enabledBorder: OutlineInputBorder(
                              // 3. 기본 TextFormField 디자인
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: kFontColor3),
                            ),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 16),
                            focusedBorder: OutlineInputBorder(
                              // 4. 손가락 터치시 TextFormField 디자인
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: kFontColor3),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8),
                //이메일
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "이메일",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: fontRegular,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: TextFormField(
                          style: TextStyle(decorationThickness: 0),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: kFontColor3),
                            enabledBorder: OutlineInputBorder(
                              // 3. 기본 TextFormField 디자인
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: kFontColor3),
                            ),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 16),
                            focusedBorder: OutlineInputBorder(
                              // 4. 손가락 터치시 TextFormField 디자인
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: kFontColor3),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8),
                //제목
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "제목",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: fontRegular,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: TextFormField(
                          style: TextStyle(decorationThickness: 0),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: kFontColor3),
                            enabledBorder: OutlineInputBorder(
                              // 3. 기본 TextFormField 디자인
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: kFontColor3),
                            ),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 16),
                            focusedBorder: OutlineInputBorder(
                              // 4. 손가락 터치시 TextFormField 디자인
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: kFontColor3),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8),
                //내용
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "내용",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: fontRegular,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: kFontColor3),
                        ),
                        child: TextFormField(
                          maxLines: null,
                          style: TextStyle(decorationThickness: 0),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            contentPadding: EdgeInsets.all(16),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                //동의 체크
                Container(
                  child: Row(
                    children: [
                      Spacer(),
                      InkWell(
                        onTap: () {
                          setState(() {
                            agree = !agree;
                          });
                        },
                        child: Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: kFontColor3),
                              ),
                              child: Icon(
                                CupertinoIcons.check_mark,
                                size: 15,
                                color: agree ? kMainColor : kFontColor3,
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              "동의합니다.",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: fontRegular,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: kMainColor,
                  ),
                  height: MediaQuery.of(context).size.height * 0.075,
                  width: double.infinity,
                  child: TextButton(
                    child: Text(
                      "문의하기",
                      style: TextStyle(
                        fontSize: fontMedium,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
