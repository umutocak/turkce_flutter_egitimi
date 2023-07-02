import 'package:flutter/material.dart';

// Uygulama içerisinde metin kullanmanıza olanak sağlayan bir widget.
class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: false, title: const Text("Text Kullanımı"), backgroundColor: Colors.red, elevation: 0),
      body: const Center(
        child: Text(
          "Bu bir metinsel ifadedir.",
          // Yazının tasarımını bu şekilde ayarlayabilirsiniz.
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.green,
            fontStyle: FontStyle.italic,
          ),
        ),
      ), // Text widget ile bir metin ekledik.
    );
  }
}
