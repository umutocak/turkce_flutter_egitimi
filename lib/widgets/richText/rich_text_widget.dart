import 'package:flutter/material.dart';
import 'package:flutter_egitimi/core/base/base_state.dart';

class RichTextWidget extends StatelessWidget with BaseState {
  RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: Text("Rich Text Kullanımı", style: TextStyle(color: colorConstant.white)),
          backgroundColor: colorConstant.maroon,
          iconTheme: IconThemeData(color: colorConstant.white),
          elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
                "Rich text genelde, yazı içerisinde bir yeri koyu veya belli etmek için kullanırız. Tek yazı içerisinde bir belirteç yapacaksanız kullanabilirsiniz"),
            const SizedBox(height: 15),
            // * Rich Text kullanımı
            RichText(
              text: const TextSpan(
                text: 'FirstName: ',
                style: TextStyle(color: Colors.grey),
                children: [
                  TextSpan(text: ' Umut', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const SizedBox(width: 15), // ? İki ayrı yazı arasında boşluk vermek için kullandık
            RichText(
              text: const TextSpan(
                text: 'LastName: ',
                style: TextStyle(color: Colors.grey),
                children: [
                  TextSpan(text: ' Ocak', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
