import 'package:flutter/material.dart';
import 'package:flutter_egitimi/core/base/base_state.dart';

class CircleAvatarWidget extends StatelessWidget with BaseState {
  CircleAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: Text("Circle Avatar Kullanımı", style: TextStyle(color: colorConstant.white)),
          backgroundColor: colorConstant.maroon,
          iconTheme: IconThemeData(color: colorConstant.white),
          elevation: 0),
      body: const Center(
        child: CircleAvatar(
            radius: 110,
            //? Bu kısımda görsel Network üzerinden gelecekse NetworkImage, local ise AssetImage
            backgroundImage: NetworkImage(
              "https://avatars.githubusercontent.com/u/48753655?v=4",
            )),
      ),
    );
  }
}
