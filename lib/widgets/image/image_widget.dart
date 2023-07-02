import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: false, title: const Text("Image Kullanımı"), backgroundColor: Colors.red, elevation: 0),
      body: Center(
        child: Image.network(
          "https://avatars.githubusercontent.com/u/48753655?v=4",
          height: 310,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
