import 'package:flutter/material.dart';
import 'package:flutter_egitimi/core/base/base_state.dart';

class HomeView extends StatelessWidget with BaseState {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Home View", style: TextStyle(color: colorConstant.warm)),
        backgroundColor: colorConstant.maroon,
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text('Widgetlar', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: const Text('Tüm Widgetlara erişebilirsin. Buradaki widgetlara başka sayfalarda da karşılaşabilirsin'),
            leading: const Icon(Icons.image, color: Color(0xffDBAFA0)),
            trailing: const Icon(Icons.arrow_right_alt),
            onTap: () => Navigator.pushNamed(context, '/widgets'),
          )
        ],
      ),
    );
  }
}
