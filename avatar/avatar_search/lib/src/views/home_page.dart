import 'package:avatar_search/src/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import 'allchars.dart';
import 'avatars.dart';

class HomePage extends StatelessWidget {
  HomePage({this.controller});
  HomeController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image.network(
            "https://cdn.vox-cdn.com/thumbor/RU8MZ6zUB7rlLXL56v52wX_pJUM=/0x0:1200x923/1200x800/filters:focal(504x366:696x558)/cdn.vox-cdn.com/uploads/chorus_image/image/68878445/1399063.0.jpg"),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: ElevatedButton(
              onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                Avatars(controller: controller)))
                  },
              child: Text('Todos os Avatars')),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: ElevatedButton(
              onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                AllChars(controller: controller)))
                  },
              child: Text('Todos os personagens')),
        ),
      ],
    ));
  }
}
