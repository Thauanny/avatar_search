import 'package:avatar_search/src/controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvatarList extends StatefulWidget {
  @override
  _AvatarListState createState() => _AvatarListState();
}

class _AvatarListState extends State<AvatarList> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        children: [
          Text('a'),
          Expanded(
            child: ListView.builder(
              itemCount: controller.avatars.length,
              itemBuilder: (context, index) {
                var character = controller.avatars[index];
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
    );
  }
}
