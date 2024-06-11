import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_egitimi/core/base/base_state.dart';

class CachedNetworkImageWidget extends StatelessWidget with BaseState {
  CachedNetworkImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: Text("Cache Image Kullanımı", style: TextStyle(color: colorConstant.white)),
          backgroundColor: colorConstant.maroon,
          iconTheme: IconThemeData(color: colorConstant.white),
          elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Cached network image ile, yüklemek istediğiniz görselleri, cache üzerine alarak daha hızlı yükleme sağlayabilirsiniz.'),
            const SizedBox(height: 15),
            RichText(
              text: TextSpan(
                text: 'Ayrıca',
                style: TextStyle(color: colorConstant.black),
                children: [
                  TextSpan(text: ' placeholde ve errorWidget', style: TextStyle(color: colorConstant.black, fontWeight: FontWeight.bold)),
                  const TextSpan(text: ' kısımlarını belirleyerek, yükleme ve hata kısmında özel durumları tanımlayabilirsiniz.'),
                ],
              ),
            ),
            const SizedBox(height: 15),
            CachedNetworkImage(
              imageUrl: 'https://avatars.githubusercontent.com/u/48753655?v=4',
              //? Örnek placeholder kullanımı
              placeholder: (context, url) => const CircularProgressIndicator(),
              //? Örnek errorWidget kullanımı
              errorWidget: (context, url, error) => const Icon(Icons.error),
            )
          ],
        ),
      ),
    );
  }
}
