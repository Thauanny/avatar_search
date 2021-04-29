import 'package:avatar_search/src/components/avatar_list.dart';
import 'package:flutter/material.dart';

class Avatars extends StatefulWidget {
  @override
  _AvatarsState createState() => _AvatarsState();
}

class _AvatarsState extends State<Avatars> {
  @override
  Widget build(BuildContext context) {
    return AvatarList();
  }
}
