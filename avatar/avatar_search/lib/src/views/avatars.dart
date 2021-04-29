import 'package:avatar_search/src/components/avatar_list.dart';
import 'package:avatar_search/src/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class Avatars extends StatelessWidget {
  HomeController controller;

  Avatars({this.controller});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('widget.title'),
      ),
      body: Container(
        height: 400,
        child: Column(
          children: [
            Text('a'),
            Expanded(
              child: ListView.builder(
                itemCount: this.controller.avatars.length,
                itemBuilder: (context, index) {
                  var character = this.controller.avatars[index];
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.network(character.photoUrl),
                      ),
                      SizedBox(
                        width: 150,
                        child: ListTile(
                          title: Center(child: Text(character.name)),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
