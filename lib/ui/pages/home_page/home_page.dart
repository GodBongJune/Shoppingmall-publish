import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingmall/core/constant/color.dart';
import 'package:shoppingmall/core/constant/move.dart';
import 'package:shoppingmall/core/constant/size.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> productItem = [
    Image.asset("assets/product/product1.png", fit: BoxFit.fill),
    Image.asset("assets/product/product2.png", fit: BoxFit.fill),
    Image.asset("assets/product/product3.png", fit: BoxFit.fill),
    Image.asset("assets/product/product4.png", fit: BoxFit.fill),
    Image.asset("assets/product/product5.png", fit: BoxFit.fill),
    Image.asset("assets/product/product6.png", fit: BoxFit.fill),
  ];
  List<Widget> startAdvertisement = [
    Image.asset("assets/ad/start1.png", fit: BoxFit.cover),
    Image.asset("assets/ad/start2.png", fit: BoxFit.cover),
    Image.asset("assets/ad/start3.png", fit: BoxFit.cover),
    Image.asset("assets/ad/start4.png", fit: BoxFit.cover),
    Image.asset("assets/ad/start5.png", fit: BoxFit.cover),
  ];

  List<bool> isLike = List.generate(6, (index) => false);

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      startAD();
    });
  }

  void startAD() {
    Random random = Random();
    int randomAD = random.nextInt(startAdvertisement.length);
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          content: Container(
            height: MediaQuery.of(context).size.height * 0.415,
            child: Column(
              children: [
                startAdvertisement[randomAD],
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.13,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            child: Text(
                              "오늘 하루 그만보기",
                              style: TextStyle(
                                  color: Colors.white, fontSize: fontRegular),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                        TextButton(
                            child: Text(
                              "X 닫기",
                              style: TextStyle(
                                  color: Colors.white, fontSize: fontRegular),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return ListView(
      children: [
        //상단 광고 이미지
        CarouselSlider(
          items: [
            Image.asset("assets/ad/ad1.png", fit: BoxFit.cover),
            Image.asset("assets/ad/ad2.png", fit: BoxFit.cover),
            Image.asset("assets/ad/ad3.png", fit: BoxFit.cover),
          ],
          options: CarouselOptions(
            aspectRatio: 16 / 9,
            viewportFraction: 1.0,
            autoPlay: true,
          ),
        ),
        //상품 리스트
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.5 / 2.6,
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemCount: productItem.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Move.productDetailPage);
                },
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: SizedBox(
                              width: double.infinity,
                              child: productItem[index],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 3),
                              Text(
                                "18,600원",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontMedium,
                                  color: kMainColor,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Product title",
                                style: TextStyle(
                                  fontSize: fontRegular,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: -8,
                      right: -8,
                      child: IconButton(
                        icon: Icon(
                          isLike[index]
                              ? CupertinoIcons.heart_fill
                              : CupertinoIcons.heart,
                          color: kFontColor4,
                        ),
                        onPressed: () {
                          setState(() {
                            isLike[index] = !isLike[index];
                          });
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        //더보기 추가버튼
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.07,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: kFontColor2)),
            child: TextButton(
                child: Text(
                  "더보기",
                  style: TextStyle(
                      color: kMainColor,
                      fontSize: fontRegular,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  setState(() {
                    productItem.addAll([
                      Image.asset("assets/product/product1.png",
                          fit: BoxFit.fill),
                      Image.asset("assets/product/product2.png",
                          fit: BoxFit.fill),
                      Image.asset("assets/product/product3.png",
                          fit: BoxFit.fill),
                      Image.asset("assets/product/product4.png",
                          fit: BoxFit.fill),
                      Image.asset("assets/product/product5.png",
                          fit: BoxFit.fill),
                      Image.asset("assets/product/product6.png",
                          fit: BoxFit.fill),
                    ]);
                    isLike.addAll(
                      List.generate(6, (index) => false),
                    );
                  });
                }),
          ),
        ),
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CarouselSlider(
            items: [
              Image.asset("assets/ad/banner1.png", fit: BoxFit.cover),
              Image.asset("assets/ad/banner2.png", fit: BoxFit.cover),
              Image.asset("assets/ad/banner3.png", fit: BoxFit.cover),
              Image.asset("assets/ad/banner4.png", fit: BoxFit.cover),
              Image.asset("assets/ad/banner5.png", fit: BoxFit.cover),
              Image.asset("assets/ad/banner6.png", fit: BoxFit.cover),
            ],
            options: CarouselOptions(
              aspectRatio: 3 / 1,
              viewportFraction: 1.0,
              autoPlay: true,
            ),
          ),
        )
      ],
    );
  }
}
