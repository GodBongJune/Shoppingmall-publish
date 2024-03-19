import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:shoppingmall/data/dto/response_dto.dart';
import 'package:shoppingmall/data/dto/user_request.dart';
import 'package:shoppingmall/data/model/user.dart';
import 'package:shoppingmall/data/repository/user_repository.dart';
import 'package:shoppingmall/ui/pages/main_page.dart';

import '../../core/constant/move.dart';
import '../../main.dart';

class SessionUser {
  User? user;
  SessionUser({this.user});
}

class SessionStore extends SessionUser {
  final mContext = navigatorKey.currentContext;

  Future<void> join(JoinReqDTO joinReqDTO, BuildContext context) async {
    ResponseDTO responseDTO =
        await UserRepository().fetchJoin(joinReqDTO, context);

    if (responseDTO.result.toString() == "SUCCESS") {
      Navigator.pushNamed(mContext!, Move.joinSuccessPage);
    } else {
      ScaffoldMessenger.of(mContext!)
          .showSnackBar(SnackBar(content: Text(responseDTO.message)));
    }
  }

  Future<void> login(LoginReqDTO loginReqDTO, BuildContext context) async {
    ResponseDTO responseDTO =
        await UserRepository().fetchLogin(loginReqDTO, context);
    Logger().d(responseDTO.result);
    if (responseDTO.result.toString() == "SUCCESS") {
      Logger().d("성공");
    }

    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => MainPage(),
        ),
        (route) => false);
  }

  Future<void> search(SearchDTO searchDTO, BuildContext context) async {
    ResponseDTO responseDTO = await UserRepository().fetchSearch(searchDTO);
    //TODO:나중에 SUCCESS로 바꿔야함
    if (responseDTO.result == "FAIL") {
      Navigator.of(context).pushNamed(Move.joinPage, arguments: searchDTO);
    }
  }
}

final sessionProvider = Provider<SessionStore>((ref) {
  return SessionStore();
});
