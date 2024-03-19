import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:shoppingmall/data/dto/user_request.dart';
import 'package:shoppingmall/data/model/user.dart';

import '../../core/constant/http.dart';
import '../../core/constant/size.dart';
import '../dto/response_dto.dart';

class UserRepository {
  Future<ResponseDTO> fetchJoin(
      JoinReqDTO requestDTO, BuildContext context) async {
    Response<dynamic> response =
        await dio.post("/app/member/join", data: requestDTO.toJson());
    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    if (response.statusCode != 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Container(
            child: Center(
              child: Text("${responseDTO.message}",
                  style: TextStyle(fontSize: fontRegular)),
            ),
          ),
          duration: Duration(seconds: 1),
          margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.4,
              left: 16,
              right: 16),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
    responseDTO.data = User.fromJson(responseDTO.data);
    return responseDTO;
  }

  Future<ResponseDTO> fetchLogin(
      LoginReqDTO requestDTO, BuildContext context) async {
    Response<dynamic> response =
        await dio.post("/app/member/login", data: requestDTO.toJson());
    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    if (responseDTO.result == "FAIL") {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Container(
            child: Center(
              child: Text("${responseDTO.message}",
                  style: TextStyle(fontSize: fontRegular)),
            ),
          ),
          duration: Duration(seconds: 1),
          margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.015,
              left: 16,
              right: 16),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
    responseDTO.result = User.fromJson(responseDTO.data);

    return responseDTO;
  }

  Future<ResponseDTO> fetchSearch(SearchDTO searchDTO) async {
    Response<dynamic> response =
        await dio.post("/app/member/auth/send", data: searchDTO.toJson());
    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    Logger().d(responseDTO.result);
    return responseDTO;
  }
}
