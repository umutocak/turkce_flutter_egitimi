import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home View", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xff49243E),
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
