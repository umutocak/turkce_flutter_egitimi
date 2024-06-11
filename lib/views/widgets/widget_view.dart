import 'package:flutter/material.dart';
import 'package:flutter_egitimi/core/base/base_state.dart';

/// ? BaseState yapımızı tanımlayarak state içerisindeki constantlara erişiyoruz.
class WidgetView extends StatelessWidget with BaseState {
  /// ! State tanımı yapıldığında const kullanılmaz.
  WidgetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// ? State içerisinden colorConstant.colorName şeklinde erişerek kullanabiliriz.
      /// ! Kullanım sağladığınız yerde const ifadesini kullanamazsınız.
      appBar: AppBar(
        title: Text("Widget View", style: TextStyle(color: colorConstant.white)),
        backgroundColor: colorConstant.maroon,
        //? Geri butonunun rengini buradan ayarlayabilirsin.
        iconTheme: IconThemeData(color: colorConstant.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: const Text('Resimler', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('Resimlerle ilgili kütüphane ve örneklere buradan erişebilirsin'),
              leading: Icon(Icons.image, color: colorConstant.warm),
              trailing: const Icon(Icons.arrow_right_alt),
              onTap: () => Navigator.pushNamed(context, '/Image'),
            ),
            ListTile(
              title: const Text('Row', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('Row kullanım örneğine buradan erişebilirsin'),
              leading: Icon(Icons.table_rows, color: colorConstant.warm),
              trailing: const Icon(Icons.arrow_right_alt),
              onTap: () => Navigator.pushNamed(context, '/rowWidget'),
            ),
            ListTile(
              title: const Text('Column', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('Column kullanım örneğine buradan erişebilirsin'),
              leading: Icon(Icons.table_rows, color: colorConstant.warm),
              trailing: const Icon(Icons.arrow_right_alt),
              onTap: () => Navigator.pushNamed(context, '/columnWidget'),
            ),
            ListTile(
              title: const Text('RichText', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('RichText kullanım örneğine buradan erişebilirsin'),
              leading: Icon(Icons.text_decrease, color: colorConstant.warm),
              trailing: const Icon(Icons.arrow_right_alt),
              onTap: () => Navigator.pushNamed(context, '/rich-text'),
            ),
            ListTile(
              title: const Text('Text', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('Text kullanım örneğine buradan erişebilirsin'),
              leading: Icon(Icons.text_decrease, color: colorConstant.warm),
              trailing: const Icon(Icons.arrow_right_alt),
              onTap: () => Navigator.pushNamed(context, '/text'),
            ),
            ListTile(
              title: const Text('Circle Avatar', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('Circle Avatar kullanım örneğine buradan erişebilirsin'),
              leading: Icon(Icons.circle, color: colorConstant.warm),
              trailing: const Icon(Icons.arrow_right_alt),
              onTap: () => Navigator.pushNamed(context, '/circle-avatar'),
            ),
            ListTile(
              title: const Text('Center', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('Center kullanım örneğine buradan erişebilirsin.'),
              leading: Icon(Icons.center_focus_strong, color: colorConstant.warm),
              trailing: const Icon(Icons.arrow_right_alt),
              onTap: () => Navigator.pushNamed(context, '/center'),
            ),
            ListTile(
              title: const Text('Circular Progress', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('Yükleniyor ekranları için kullanabileceğin Widget'),
              leading: Icon(Icons.circle, color: colorConstant.warm),
              trailing: const Icon(Icons.arrow_right_alt),
              onTap: () => Navigator.pushNamed(context, '/circular-progress'),
            ),
          ],
        ),
      ),
    );
  }
}
