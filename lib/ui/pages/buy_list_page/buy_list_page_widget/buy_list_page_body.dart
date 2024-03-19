import 'package:flutter/material.dart';
import 'package:shoppingmall/core/constant/color.dart';
import 'package:shoppingmall/core/constant/size.dart';

class BuyListPageBody extends StatelessWidget {
  const BuyListPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "YYYY.MM.DD",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: fontMedium,
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //사진
                    Container(
                      child: SizedBox(
                        height: 80,
                        width: 80,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            "assets/buy_list/buylist1.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    //이름 가격
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("product name",
                              style: TextStyle(
                                  color: kFontColor1, fontSize: fontMedium)),
                          Text(
                            "16,000원",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: fontMedium,
                              fontWeight: FontWeight.bold,
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
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //사진
                    Container(
                      child: SizedBox(
                        height: 80,
                        width: 80,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            "assets/buy_list/buylist2.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    //이름 가격
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("product name",
                              style: TextStyle(
                                  color: kFontColor1, fontSize: fontMedium)),
                          Text(
                            "16,000원",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: fontMedium,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Divider(thickness: 1, color: Colors.grey[200]),
              SizedBox(height: 10),
              Text(
                "YYYY.MM.DD",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: fontMedium,
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //사진
                    Container(
                      child: SizedBox(
                        height: 80,
                        width: 80,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            "assets/buy_list/buylist3.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    //이름 가격
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("product name",
                              style: TextStyle(
                                  color: kFontColor1, fontSize: fontMedium)),
                          Text(
                            "16,000원",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: fontMedium,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
