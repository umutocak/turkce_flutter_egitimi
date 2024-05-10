import 'package:flutter/material.dart';

class WidgetView extends StatelessWidget {
  const WidgetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget View", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xff49243E),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text('Resimler', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: const Text('Resimlerle ilgili kütüphane ve örneklere buradan erişebilirsin'),
            leading: const Icon(Icons.image, color: Color(0xffDBAFA0)),
            trailing: const Icon(Icons.arrow_right_alt),
            onTap: () => Navigator.pushNamed(context, '/Image'),
          ),
          ListTile(
            title: const Text('Row-Column', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: const Text('Row ve Column kullanım örneğine buradan erişebilirsin'),
            leading: const Icon(Icons.table_rows, color: Color(0xffDBAFA0)),
            trailing: const Icon(Icons.arrow_right_alt),
            onTap: () => Navigator.pushNamed(context, '/Image'),
          ),
          ListTile(
            title: const Text('RichText', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: const Text('RichText kullanım örneğine buradan erişebilirsin'),
            leading: const Icon(Icons.text_decrease, color: Color(0xffDBAFA0)),
            trailing: const Icon(Icons.arrow_right_alt),
            onTap: () => Navigator.pushNamed(context, '/Image'),
          ),
          ListTile(
            title: const Text('Circle Avatar', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: const Text('Circle Avatar kullanım örneğine buradan erişebilirsin'),
            leading: const Icon(Icons.circle, color: Color(0xffDBAFA0)),
            trailing: const Icon(Icons.arrow_right_alt),
            onTap: () => Navigator.pushNamed(context, '/Image'),
          ),
          ListTile(
            title: const Text('Center', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: const Text('Center kullanım örneğine buradan erişebilirsin.'),
            leading: const Icon(Icons.center_focus_strong, color: Color(0xffDBAFA0)),
            trailing: const Icon(Icons.arrow_right_alt),
            onTap: () => Navigator.pushNamed(context, '/Image'),
          ),
        ],
      ),
    );
  }
}
