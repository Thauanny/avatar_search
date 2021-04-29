import 'package:avatar_search/src/components/avatar_list.dart';
import 'package:avatar_search/src/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class Avatars extends StatelessWidget {
  Avatars({this.controller});
  HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatares registrados'),
      ),
      body: AvatarList(controller: controller),
    );
  }
}
