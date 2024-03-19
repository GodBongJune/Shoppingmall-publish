import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingmall/core/constant/color.dart';
import 'package:shoppingmall/core/constant/size.dart';

class ProductBuyPageBody extends StatefulWidget {
  const ProductBuyPageBody({super.key});

  @override
  State<ProductBuyPageBody> createState() => _ProductBuyPageBodyState();
}

class _ProductBuyPageBodyState extends State<ProductBuyPageBody> {
  int productCount = 1;
  bool paySelected = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //제품 간단정보 및 수량
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "장바구니",
                  style: TextStyle(
                      color: kMainColor,
                      fontSize: fontMedium,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset(
                                  "assets/product_detail/productdetail1.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Product title",
                                      style: TextStyle(
                                          color: kFontColor1,
                                          fontSize: fontMedium),
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "10,000원",
                                            style: TextStyle(
                                                color: kMainColor,
                                                fontSize: fontMedium,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Row(
                                            children: [
                                              InkWell(
                                                onTap: productCount > 1
                                                    ? () {
                                                        setState(() {
                                                          productCount--;
                                                        });
                                                      }
                                                    : null,
                                                child: Icon(
                                                  CupertinoIcons.minus_circle,
                                                  color: productCount > 1
                                                      ? kMainColor
                                                      : kFontColor2,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0),
                                                child: Text(
                                                  productCount.toString(),
                                                  style: TextStyle(
                                                      color: kMainColor,
                                                      fontSize: fontRegular),
                                                ),
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      productCount++;
                                                    });
                                                  },
                                                  child: Icon(
                                                    CupertinoIcons.plus_circle,
                                                    color: kMainColor,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
          Divider(thickness: 10, color: Colors.grey[200]),
          //결제 방식
          Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8),
                  Text(
                    "결제 수단",
                    style: TextStyle(
                        color: kMainColor,
                        fontSize: fontMedium,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: paySelected ? kMainColor : kFontColor2,
                            ),
                          ),
                          child: TextButton(
                              child: Text("카드 결제",
                                  style: TextStyle(
                                      color: paySelected
                                          ? kMainColor
                                          : kFontColor2)),
                              onPressed: () {
                                setState(() {
                                  paySelected = true;
                                });
                              }),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: !paySelected ? kMainColor : kFontColor2,
                            ),
                          ),
                          child: TextButton(
                              child: Text("간편 결제",
                                  style: TextStyle(
                                      color: !paySelected
                                          ? kMainColor
                                          : kFontColor2)),
                              onPressed: () {
                                setState(() {
                                  paySelected = false;
                                });
                              }),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ),
          Divider(thickness: 10, color: Colors.grey[200]),
          //결제 금액
          Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "결제 금액",
                    style: TextStyle(
                        color: kMainColor,
                        fontSize: fontMedium,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "주문 금액",
                              style: TextStyle(
                                  color: kMainColor, fontSize: fontRegular),
                            ),
                            Text(
                              "25,000원",
                              style: TextStyle(
                                  color: kFontColor2, fontSize: fontRegular),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Divider(thickness: 1, color: Colors.grey[200]),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "총 결제 금액",
                              style: TextStyle(
                                  color: kMainColor,
                                  fontSize: fontRegular,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "25,000원",
                              style: TextStyle(
                                  color: kMainColor,
                                  fontSize: fontRegular,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
