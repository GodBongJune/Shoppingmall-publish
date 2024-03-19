import 'package:flutter/material.dart';
import 'package:shoppingmall/core/constant/color.dart';
import 'package:shoppingmall/core/constant/size.dart';

class ProductDetailPageBody extends StatefulWidget {
  const ProductDetailPageBody({super.key});

  @override
  State<ProductDetailPageBody> createState() => _ProductDetailPageBodyState();
}

class _ProductDetailPageBodyState extends State<ProductDetailPageBody> {
  List<Widget> productDetail = [
    Image.asset("assets/product_detail/productdetail1.png", fit: BoxFit.fill),
    Image.asset("assets/product_detail/productdetail1.png", fit: BoxFit.fill),
    Image.asset("assets/product_detail/productdetail1.png", fit: BoxFit.fill),
  ];

  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  _scrollTop() {
    _scrollController.animateTo(0,
        duration: Duration(milliseconds: 100), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          ListView(
            controller: _scrollController,
            children: [
              //제품 사진
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    child: PageView.builder(
                      itemCount: productDetail.length,
                      itemBuilder: (context, index) {
                        return Container(child: productDetail[index]);
                      },
                    ),
                  ),
                  Positioned(
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              // 제품 이름 가격
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Product Title",
                          style: TextStyle(
                              color: kFontColor1, fontSize: fontMedium),
                        ),
                        IconButton(icon: Icon(Icons.share), onPressed: () {}),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text(
                      "10,000원",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Divider(thickness: 8, color: Colors.grey[200]),
              //제품 설명 사진
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            color: kFontColor2,
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: 5,
                          ),
                          SizedBox(width: 16),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.09,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "상품 정보",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: fontMedium),
                                ),
                                Text(
                                  "색상계열 : 화이트",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: fontMedium),
                                ),
                                Text(
                                  "의류핏 : 기본",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: fontMedium),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Image.asset("assets/product_detail/productdetail2.png"),
                    SizedBox(height: 32),
                    Container(
                      child: RichText(
                        text: TextSpan(
                          text:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,",
                          style: TextStyle(
                              color: Colors.black, fontSize: fontRegular),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            right: 16,
            bottom: 5,
            child: FloatingActionButton(
              backgroundColor: kMainColor,
              child: Icon(Icons.arrow_upward, color: Colors.white),
              onPressed: () {
                _scrollTop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
