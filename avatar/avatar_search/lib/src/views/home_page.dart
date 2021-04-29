import 'package:avatar_search/src/components/avatar_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
            "https://cdn.vox-cdn.com/thumbor/RU8MZ6zUB7rlLXL56v52wX_pJUM=/0x0:1200x923/1200x800/filters:focal(504x366:696x558)/cdn.vox-cdn.com/uploads/chorus_image/image/68878445/1399063.0.jpg"),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: ElevatedButton(
              onPressed: () => {
                    Navigator.pushNamed(context, '/avatars'),
                  },
              child: Text('Todos os Avatars')),
        ),
        AvatarList(),
      ],
    );
  }
}
