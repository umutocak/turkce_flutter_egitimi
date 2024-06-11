import 'package:flutter/material.dart';
import 'package:flutter_egitimi/core/base/base_state.dart';

class ImageWidget extends StatelessWidget with BaseState {
  ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: Text("Image Kullanımı", style: TextStyle(color: colorConstant.white)),
          backgroundColor: colorConstant.maroon,
          iconTheme: IconThemeData(color: colorConstant.white),
          elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('- Image.network ile network üzerindeki görsellere ulaşabilirsiniz.'),
            const SizedBox(height: 5),
            const Text('- Image.asset ile uygulama içerisinde bulundurduğunuz görselleri çekebilirsiniz.'),
            const SizedBox(height: 15),
            Image.network("https://avatars.githubusercontent.com/u/48753655?v=4", height: 310, fit: BoxFit.fitWidth),
          ],
        ),
      ),
    );
  }
}
