import 'package:avatar_search/src/components/allchars_list.dart';
import 'package:avatar_search/src/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class AllChars extends StatelessWidget {
  AllChars({this.controller});
  HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personagens registrados'),
      ),
      body: AllCharsList(
        controller: controller,
      ),
    );
  }
}
