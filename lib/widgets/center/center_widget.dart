import 'package:flutter/material.dart';
import 'package:flutter_egitimi/core/base/base_state.dart';

class CenterWidget extends StatelessWidget with BaseState {
  CenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: Text("Center Kullanımı", style: TextStyle(color: colorConstant.white)),
          backgroundColor: colorConstant.maroon,
          iconTheme: IconThemeData(color: colorConstant.white),
          elevation: 0),
      body: const Center(child: Text("Bu yazı ortalandı.")),
    );
  }
}
