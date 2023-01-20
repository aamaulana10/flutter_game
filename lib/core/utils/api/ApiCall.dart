import 'dart:convert';
import 'package:dio/dio.dart';

class ApiCall {

  static Dio dio = Dio();

  static String BASE_URL = "https://api.rawg.io/api/games?key=70cafe535be14968b26d1fe6ae03b005";
  static int PAGE_SIZE = 20;

  static String getHighlightGameByPage(int page) {

    return BASE_URL + "&page=${page}&page_size=${PAGE_SIZE}&platforms=187&ordering=-released";
  }

  static String getNewestGameByPage(int page) {

    return BASE_URL + "&page=${page}&page_size=${PAGE_SIZE}&ordering=released";
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