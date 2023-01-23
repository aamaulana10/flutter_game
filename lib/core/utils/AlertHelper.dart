import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlertHelper {

  static void showErrorSnackBar(String title, String message) {
    Get.snackbar(
        title,
        message,
        backgroundColor: Colors.blue,
        snackPosition: SnackPosition.TOP,
        colorText: Colors.white,
        duration: Duration(seconds: 8),
        animationDuration: Duration(seconds: 1),
        margin: EdgeInsets.only(top: 8, left: 8, right: 8)
    );
  }
}