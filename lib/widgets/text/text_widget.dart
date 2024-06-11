import 'package:flutter/material.dart';
import 'package:flutter_egitimi/core/base/base_state.dart';

// ? Uygulama içerisinde metin kullanmanıza olanak sağlayan bir widget.
class TextWidget extends StatelessWidget with BaseState {
  TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: Text("Text Kullanımı", style: TextStyle(color: colorConstant.white)),
          backgroundColor: colorConstant.maroon,
          iconTheme: IconThemeData(color: colorConstant.white),
          elevation: 0),
      body: const Center(
        child: Text(
          "Bu bir metinsel ifadedir.",
          // ? Yazının tasarımını bu şekilde ayarlayabilirsiniz.
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.green, fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
