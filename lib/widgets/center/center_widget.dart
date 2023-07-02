import 'package:flutter/material.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: false, title: const Text("Center Kullanımı"), backgroundColor: Colors.red, elevation: 0),
      body: const Center(child: Text("Bu yazı ortalandı.")),
    );
  }
}
