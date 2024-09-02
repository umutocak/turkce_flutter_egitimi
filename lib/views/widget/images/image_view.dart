import 'package:flutter/material.dart';
import 'package:flutter_egitimi/core/base/base_state.dart';

class ImageView extends StatelessWidget with BaseState {
  ImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// ? State içerisinden colorConstant.colorName şeklinde erişerek kullanabiliriz.
      /// ! Kullanım sağladığınız yerde const ifadesini kullanamazsınız.
      appBar: AppBar(
        title: Text("Image View", style: TextStyle(color: colorConstant.white)),
        backgroundColor: colorConstant.maroon,
        //? Geri butonunun rengini buradan ayarlayabilirsin.
        iconTheme: IconThemeData(color: colorConstant.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: const Text('Image.Network', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('Flutter ile standart gelen Image.Network kullanımı'),
              leading: Icon(Icons.image, color: colorConstant.warm),
              trailing: const Icon(Icons.arrow_right_alt),
              onTap: () => Navigator.pushNamed(context, '/imageWidget'),
            ),
            ListTile(
              title: const Text('Cache Network', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('cached_network_image kütüphanesi ile gelişmiş kullanım örneği'),
              leading: Icon(Icons.table_rows, color: colorConstant.warm),
              trailing: const Icon(Icons.arrow_right_alt),
              onTap: () => Navigator.pushNamed(context, '/cachedImage'),
            )
          ],
        ),
      ),
    );
  }
}
