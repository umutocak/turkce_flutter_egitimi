import 'package:flutter/material.dart';


// Uygulama içerisinde metin kullanmanıza olanak sağlayan bir widget.
class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(child: Text("Bu bir metinsel ifadedir."),), // Text widget ile bir metin ekledik.
    );
  }
}