
import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: false, title: const Text("CircleAvatar Kullanımı"), backgroundColor: Colors.red, elevation: 0),
      body: const Center(
        child: CircleAvatar(radius: 110, backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/48753655?v=4")),
      ),
    );
  }
}