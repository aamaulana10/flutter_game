// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_game/core/injection/Injection.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_game/main.dart';

void main() {

  var useCase = Injection().provideUsecase();

  test("check game list is not empty", () async {

    try {
      var data = await useCase.getHighlightGameByPage(1);

      if (data.results!.isEmpty) {

        expect(data.results, data.results!.length != 0);
      }
    }catch(e) {

      throw e;
    }

  });
}
