import 'package:flutter/material.dart';
import 'package:flutter_egitimi/core/base/base_state.dart';

class CircularProgressIndicatorWidget extends StatelessWidget with BaseState {
  CircularProgressIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Circular Progress Kullanımı", style: TextStyle(color: colorConstant.white)),
        backgroundColor: colorConstant.maroon,
        iconTheme: IconThemeData(color: colorConstant.white),
      ),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
