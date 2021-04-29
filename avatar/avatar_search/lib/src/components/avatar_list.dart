import 'package:avatar_search/src/controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvatarList extends StatelessWidget {
  AvatarList({this.controller});

  HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: controller.avatars.length,
              itemBuilder: (context, index) {
                showImg(var char) {
                  try {
                    return Image.network(char.photoUrl);
                  } catch (e) {
                    return Image.network(
                        'https://img.icons8.com/ios/452/no-image.png');
                  }
                }

                var character = controller.avatars[index];
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: showImg(character),
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
    );
  }
}
