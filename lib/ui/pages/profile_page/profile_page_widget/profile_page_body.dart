import 'package:flutter/material.dart';
import 'package:shoppingmall/core/constant/color.dart';
import 'package:shoppingmall/core/constant/move.dart';
import 'package:shoppingmall/core/constant/size.dart';
import 'package:shoppingmall/ui/pages/like_list_page/like_list_page.dart';

class ProfilePageBody extends StatefulWidget {
  final Function(int) onNavigateToPage;

  const ProfilePageBody({Key? key, required this.onNavigateToPage})
      : super(key: key);

  @override
  State<ProfilePageBody> createState() => _ProfilePageBodyState();
}

class _ProfilePageBodyState extends State<ProfilePageBody> {
  void navigateToPage(int pageIndex) {
    widget.onNavigateToPage(pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //프로필 수정
        Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, Move.profileUaptePage);
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                child: Row(
                  children: [
                    Image.asset("assets/profile/default.png"),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "엠바스",
                            style: TextStyle(
                                color: kMainColor,
                                fontSize: fontMedium,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "프로필 보기",
                            style: TextStyle(
                                color: kFontColor2, fontSize: fontRegular),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios, color: kFontColor2),
                  ],
                ),
              ),
            ),
          ),
        ),
        Divider(
          thickness: 10,
          color: Colors.grey[200],
        ),
        //나의 거래
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "나의 거래",
                  style: TextStyle(
                    color: kMainColor,
                    fontSize: fontRegular,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              //구매내역
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Move.buyListPage);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("구매내역",
                            style: TextStyle(
                                color: kMainColor, fontSize: fontRegular)),
                        Icon(Icons.arrow_forward_ios, color: kFontColor2),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(color: Colors.grey[200], thickness: 1),
              //찜목록
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: InkWell(
                    onTap: () {
                      navigateToPage(3);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("찜 목록",
                            style: TextStyle(
                                color: kMainColor, fontSize: fontRegular)),
                        Icon(Icons.arrow_forward_ios, color: kFontColor2),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 10,
          color: Colors.grey[200],
        ),
        //고객센터
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "고객센터",
                  style: TextStyle(
                    color: kMainColor,
                    fontSize: fontRegular,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              //공지사항
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Move.noticePage);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("공지사항",
                            style: TextStyle(
                                color: kMainColor, fontSize: fontRegular)),
                        Icon(Icons.arrow_forward_ios, color: kFontColor2),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(color: Colors.grey[200], thickness: 1),
              //자주묻는질문
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Move.customCenterPage,
                          arguments: 2);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("자주묻는 질문",
                            style: TextStyle(
                                color: kMainColor, fontSize: fontRegular)),
                        Icon(Icons.arrow_forward_ios, color: kFontColor2),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(color: Colors.grey[200], thickness: 1),
              //1:1문의
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Move.customCenterPage);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("1:1 문의",
                            style: TextStyle(
                                color: kMainColor, fontSize: fontRegular)),
                        Icon(Icons.arrow_forward_ios, color: kFontColor2),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 10,
          color: Colors.grey[200],
        ),
        //기타
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "기타",
                  style: TextStyle(
                    color: kMainColor,
                    fontSize: fontRegular,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              //구매내역
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: InkWell(
                    onTap: () {
                      print("로그아웃 눌름");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("로그아웃",
                            style: TextStyle(
                                color: kMainColor, fontSize: fontRegular)),
                        Icon(Icons.arrow_forward_ios, color: kFontColor2),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
