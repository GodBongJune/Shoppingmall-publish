import 'package:flutter/cupertino.dart';
import 'package:shoppingmall/ui/pages/address_plus_page/address_plus_page.dart';
import 'package:shoppingmall/ui/pages/address_search_page/address_search_page.dart';
import 'package:shoppingmall/ui/pages/address_select_page/address_select_page.dart';
import 'package:shoppingmall/ui/pages/address_update_page/address_update_page.dart';
import 'package:shoppingmall/ui/pages/buy_list_page/buy_list_page.dart';
import 'package:shoppingmall/ui/pages/custom_center_page/custom_center_page.dart';
import 'package:shoppingmall/ui/pages/find_email_page/find_email_page.dart';
import 'package:shoppingmall/ui/pages/find_passwod_page/find_passwod_page.dart';
import 'package:shoppingmall/ui/pages/find_password_change_page/find_password_change_page.dart';
import 'package:shoppingmall/ui/pages/join_page/join_page.dart';
import 'package:shoppingmall/ui/pages/join_page/join_page_widget/join_page_success.dart';
import 'package:shoppingmall/ui/pages/like_list_page/like_list_page.dart';
import 'package:shoppingmall/ui/pages/login_page/login_page.dart';
import 'package:shoppingmall/ui/pages/main_page.dart';
import 'package:shoppingmall/ui/pages/name_change_page/name_change_page.dart';
import 'package:shoppingmall/ui/pages/notice_page/notice_page.dart';
import 'package:shoppingmall/ui/pages/number_change_page/number_change_page.dart';
import 'package:shoppingmall/ui/pages/password_update_page/password_update_page.dart';
import 'package:shoppingmall/ui/pages/product_buy_page/product_buy_page.dart';
import 'package:shoppingmall/ui/pages/product_detail_page/product_detail_page.dart';
import 'package:shoppingmall/ui/pages/profile_update_page/profile_update_page.dart';

import '../../ui/pages/find_email_success_page/find_email_success_page.dart';

class Move {
  static String mainPage = "/mainPage";

  //로그인 관련
  static String loginPage = "/loginPage";
  static String joinPage = "/joinPage";
  static String joinSuccessPage = "/joinSuccessPage";
  static String findEmailPage = "/findEmailPage";
  static String findEmailSuccessPage = "/findEmailSuccessPage";
  static String findPasswordPage = "/findPasswordPage";
  static String findPasswordChangePage = "/findPasswordChangePage";

  //상품 관련
  static String productDetailPage = "/productDetailPage";

  //구매하기
  static String productBuyPage = "/productBuyPage";

  //마이페이지->찜목록
  static String likeListPage = "/likeListPage";

  //마이페이지->프로필보기
  static String profileUaptePage = "/profileUpdatePage";
  static String nameChangePage = "/nameChangePage";
  static String numberChangePage = "/numberChangePage";
  static String addressSelectPage = "/addressSelectPage";
  static String addressPlusPage = "/addressPlusPage";
  static String addressUpdatePage = "/addressUpdatePage";
  static String addressSearchPage = "/addressSearchPage";
  static String passwordUpdatePage = "/passwordUpdatePage";

  //구매내역
  static String buyListPage = "/buyListPage";

  //공지사항
  static String noticePage = "/noticePage";

  //고객센터
  static String customCenterPage = "/customCenterPage";
}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    Move.mainPage: (context) => MainPage(),

    //로그인 관련
    Move.loginPage: (context) => LoginPage(),
    Move.joinPage: (context) => JoinPage(),
    Move.joinSuccessPage: (context) => JoinPageSuccess(),
    Move.findEmailPage: (context) => FindEmailPage(),
    Move.findEmailSuccessPage: (context) => FindEmailSuccessPage(),
    Move.findPasswordPage: (context) => FindPasswordPage(),
    Move.findPasswordChangePage: (context) => FindPasswordChagePage(),

    //상품 관련
    Move.productDetailPage: (context) => ProductDetailPage(),

    //구매하기
    Move.productBuyPage: (context) => ProductBuyPage(),

    //마이페이지->찜목록
    Move.likeListPage: (context) => LikeListPage(),

    //마이페이지->프로필보기
    Move.profileUaptePage: (context) => ProfileUpdatePage(),
    Move.nameChangePage: (context) => NameChangePage(),
    Move.numberChangePage: (context) => NumberChangePage(),
    Move.addressSelectPage: (context) => AddressSelectPage(),
    Move.addressPlusPage: (context) => AddressPlusPage(),
    Move.addressUpdatePage: (context) => AddressUpdatePage(),
    Move.addressSearchPage: (context) => AddressSearchPage(),
    Move.passwordUpdatePage: (context) => PasswordUpdatePage(),

    //구매내역
    Move.buyListPage: (context) => BuyListPage(),

    //공지사항
    Move.noticePage: (context) => NoticePage(),

    //고객센터
    Move.customCenterPage: (context) => CustomCenterPage(),
  };
}
