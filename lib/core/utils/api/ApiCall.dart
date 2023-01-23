import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_game/core/utils/dateHelper/DateHelper.dart';

class ApiCall {

  static Dio dio = Dio();

  static String BASE_URL = "https://api.rawg.io/api/games";
  static String KEY = "70cafe535be14968b26d1fe6ae03b005";
  static int PAGE_SIZE = 20;

  static String getHighlightGameByPage(int page) {

    var currentDate = DateHelper.formatDateToApiSortTime(DateTime.now().toString());
    var oneYearBefore = DateHelper.formatDateToApiSortTime(DateTime(DateTime.now().year - 1).toString());

    return BASE_URL + "?key=${KEY}&page=${page}&page_size=${PAGE_SIZE}&platforms=187&dates=${oneYearBefore},${currentDate}&ordering=-released";
  }

  static String getDetailGameById(int gameId) {

    return BASE_URL + "/${gameId}?key=${KEY}";
  }

  static String searchGameByPage(int page, int pageSize, String query) {

    return BASE_URL + "/games?page=${page}&page_size=${pageSize}&search=${query}";
  }

  static getRequest(String url) async {

    Response response = await dio.get(url);

    return response;
  }

  static postRequest(String url, Map param) async {

    Response response = await dio.post(url, data: jsonEncode(param));

    return response;
  }
}