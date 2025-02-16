import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommers_app/core/class/statuse_requst.dart';
import 'package:ecommers_app/core/function/checkinternet.dart';
import 'package:http/http.dart' as http;

class Apiserver {
  Future<Either<StatuseRequst, Map>> postData(String linkurl, Map data) async {
    try {
      if (await checkInternent()) {
        var response = await http.post(Uri.parse(linkurl), body: data);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);
          return Right(responseBody);
        } else {
          return const Left(StatuseRequst.serverfailure);
        }
      } else {
        return const Left(StatuseRequst.offline);
      }
    } catch (_) {
      return const Left(StatuseRequst.serverfailure);
    }
  }
}
