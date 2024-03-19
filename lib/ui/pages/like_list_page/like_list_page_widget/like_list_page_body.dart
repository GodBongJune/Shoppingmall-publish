import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';
import '../../../../core/constant/move.dart';
import '../../../../core/constant/size.dart';

class LikeListPageBody extends StatefulWidget {
  const LikeListPageBody({super.key});

  @override
  State<LikeListPageBody> createState() => _LikeListPageBodyState();
}

class _LikeListPageBodyState extends State<LikeListPageBody> {
  List<Widget> productItem = [
    Image.asset("assets/product/product3.png", fit: BoxFit.fill),
    Image.asset("assets/product/product4.png", fit: BoxFit.fill),
    Image.asset("assets/product/product5.png", fit: BoxFit.fill),
  ];

  List<bool> isLike = List.generate(3, (index) => true);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1 / 1.3,
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 8,
            ),
            itemCount: productItem.length,
            itemBuilder: (context, index) {
              return Center(
                child: InkWell(
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
                                width: MediaQuery.of(context).size.width * 0.5,
                                height:
                                    MediaQuery.of(context).size.height * 0.5,
                                child: productItem[index],
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Product Title",
                            style: TextStyle(
                              color: kFontColor1,
                              fontSize: fontRegular,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "32,000원",
                            style: TextStyle(
                                fontSize: fontMedium,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Positioned(
                        right: -5,
                        top: -5,
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
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  child: Center(
                                    child: Text(
                                      isLike[index]
                                          ? "찜목록에 추가되었습니다"
                                          : "찜목록에서 삭제되었습니다",
                                      style: TextStyle(
                                          fontSize: fontRegular,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                backgroundColor: kMainColor,
                                duration: Duration(seconds: 1),
                                margin: EdgeInsets.only(
                                    bottom: 20.0, left: 16, right: 16),
                                behavior: SnackBarBehavior.floating,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

// Positioned(
//   child: IconButton(
//     icon: Icon(
//       isLike[index]
//           ? CupertinoIcons.heart_fill
//           : CupertinoIcons.heart,
//       color: kFontColor4,
//     ),
//     onPressed: () {
//       setState(() {
//         isLike[index] = !isLike[index];
//       });
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Center(
//             child: Text(
//               isLike[index]
//                   ? "찜목록에 추가되었습니다"
//                   : "찜목록에서 삭제되었습니다",
//               style: TextStyle(
//                   fontSize: fontRegular,
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           backgroundColor: kMainColor,
//           duration: Duration(seconds: 1),
//           margin: EdgeInsets.only(
//               bottom: 40.0, left: 16, right: 16),
//           behavior: SnackBarBehavior.floating,
//         ),
//       );
//     },
//   ),
// ),
