import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoppingmall/core/constant/color.dart';
import 'package:shoppingmall/core/constant/move.dart';
import 'package:shoppingmall/core/constant/size.dart';
import 'package:shoppingmall/ui/pages/join_page/join_page_widget/join_page_form_field.dart';

class JoinPageBody extends StatelessWidget {
  Dio dio = Dio();
  JoinPageBody({super.key});

  JoinPageFormField joinPageFormField = JoinPageFormField();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          joinPageFormField,
          // Container(
          //   width: double.infinity,
          //   height: MediaQuery.of(context).size.height * 0.075,
          //   decoration: BoxDecoration(
          //     color: kMainColor,
          //     borderRadius: BorderRadius.circular(5),
          //   ),
          //   child: TextButton(
          //       child: Text("다음", style: TextStyle(fontSize: fontRegular)),
          //       onPressed: () {
          //         FocusScope.of(context).unfocus();
          //         showModalBottomSheet(
          //           context: context,
          //           builder: (BuildContext context) {
          //             bool agreeCheckAll = false;
          //             bool agreeCheck1 = false;
          //             bool agreeCheck2 = false;
          //             bool agreeCheck3 = false;
          //             return Container(
          //               height: MediaQuery.of(context).size.height * 0.38,
          //               child: StatefulBuilder(
          //                 builder: (context, setState) {
          //                   return Container(
          //                     padding: EdgeInsets.all(16.0),
          //                     child: Column(
          //                       children: <Widget>[
          //                         Column(
          //                           children: [
          //                             //전체 동의
          //                             Row(
          //                               children: [
          //                                 IconButton(
          //                                   icon: Icon(Icons.check_circle),
          //                                   color: agreeCheckAll
          //                                       ? Colors.green
          //                                       : kFontColor2,
          //                                   onPressed: () {
          //                                     setState(() {
          //                                       agreeCheckAll = !agreeCheckAll;
          //                                       if (agreeCheckAll) {
          //                                         agreeCheck1 = true;
          //                                         agreeCheck2 = true;
          //                                         agreeCheck3 = true;
          //                                       } else {
          //                                         agreeCheck1 = false;
          //                                         agreeCheck2 = false;
          //                                         agreeCheck3 = false;
          //                                       }
          //                                     });
          //                                   },
          //                                 ),
          //                                 Text(
          //                                   "전체 이용약관 동의",
          //                                   style: TextStyle(
          //                                       fontWeight: FontWeight.bold),
          //                                 ),
          //                               ],
          //                             ),
          //                             //동의 1
          //                             Row(
          //                               mainAxisAlignment:
          //                                   MainAxisAlignment.spaceBetween,
          //                               children: [
          //                                 Row(
          //                                   children: [
          //                                     IconButton(
          //                                       icon: Icon(Icons.check),
          //                                       color: agreeCheck1
          //                                           ? Colors.green
          //                                           : kFontColor2,
          //                                       onPressed: () {
          //                                         setState(() {
          //                                           agreeCheck1 = !agreeCheck1;
          //                                         });
          //                                       },
          //                                     ),
          //                                     Text(
          //                                       "[필수] 서비스 이용약관 동의",
          //                                       style: TextStyle(
          //                                           color: kMainColor),
          //                                     ),
          //                                   ],
          //                                 ),
          //                                 TextButton(
          //                                     child: Text(
          //                                       "보기",
          //                                       style: TextStyle(
          //                                           color: kFontColor2),
          //                                     ),
          //                                     onPressed: () {})
          //                               ],
          //                             ),
          //                             //동의 2
          //                             Row(
          //                               mainAxisAlignment:
          //                                   MainAxisAlignment.spaceBetween,
          //                               children: [
          //                                 Row(
          //                                   children: [
          //                                     IconButton(
          //                                       icon: Icon(Icons.check),
          //                                       color: agreeCheck2
          //                                           ? Colors.green
          //                                           : kFontColor2,
          //                                       onPressed: () {
          //                                         setState(() {
          //                                           agreeCheck2 = !agreeCheck2;
          //                                         });
          //                                       },
          //                                     ),
          //                                     Text(
          //                                       "[필수] 서비스 이용약관 동의",
          //                                       style: TextStyle(
          //                                           color: kMainColor),
          //                                     ),
          //                                   ],
          //                                 ),
          //                                 TextButton(
          //                                     child: Text(
          //                                       "보기",
          //                                       style: TextStyle(
          //                                           color: kFontColor2),
          //                                     ),
          //                                     onPressed: () {})
          //                               ],
          //                             ),
          //                             //동의 3
          //                             Row(
          //                               mainAxisAlignment:
          //                                   MainAxisAlignment.spaceBetween,
          //                               children: [
          //                                 Row(
          //                                   children: [
          //                                     IconButton(
          //                                       icon: Icon(Icons.check),
          //                                       color: agreeCheck3
          //                                           ? Colors.green
          //                                           : kFontColor2,
          //                                       onPressed: () {
          //                                         setState(() {
          //                                           agreeCheck3 = !agreeCheck3;
          //                                         });
          //                                       },
          //                                     ),
          //                                     Text(
          //                                       "[선택] 마케팅 정보 수신 동의",
          //                                       style: TextStyle(
          //                                           color: kMainColor),
          //                                     ),
          //                                   ],
          //                                 ),
          //                                 TextButton(
          //                                     child: Text(
          //                                       "보기",
          //                                       style: TextStyle(
          //                                           color: kFontColor2),
          //                                     ),
          //                                     onPressed: () {})
          //                               ],
          //                             )
          //                           ],
          //                         ),
          //                         Spacer(),
          //                         Consumer(
          //                           builder: (context, ref, child) {
          //                             return Container(
          //                               width:
          //                                   MediaQuery.of(context).size.width,
          //                               height:
          //                                   MediaQuery.of(context).size.height *
          //                                       0.075,
          //                               child: TextButton(
          //                                 style: TextButton.styleFrom(
          //                                   backgroundColor: kMainColor,
          //                                 ),
          //                                 child: Text("회원가입하기",
          //                                     style: TextStyle(
          //                                         fontSize: fontRegular)),
          //                                 onPressed: () {
          //                                   if (agreeCheck1 &&
          //                                       agreeCheck2 == true) {
          //                                     // dio.post(
          //                                     //   "https://api.aiapp.link/member",
          //                                     //   data: null,
          //                                     // );
          //                                     Navigator.of(context)
          //                                         .popAndPushNamed(
          //                                             Move.joinSuccessPage);
          //                                   }
          //                                   joinPageFormField.submit(ref);
          //                                 },
          //                               ),
          //                             );
          //                           },
          //                         ),
          //                       ],
          //                     ),
          //                   );
          //                 },
          //               ),
          //             );
          //           },
          //         );
          //       }),
          // )
        ],
      ),
    );
  }
}
