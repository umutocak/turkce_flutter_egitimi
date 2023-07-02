import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: false, title: const Text("ListTile Kullanımı"), backgroundColor: Colors.red, elevation: 0),
      body: Center(
        child: ListTile(
          // leading: ListTile widget'ın sol tarafını bahsetmektedir. Buraya istediğiniz Widget tipini koyabilirsiniz
          leading: const CircleAvatar(radius: 30, backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/48753655?v=4")),
          title: const Text("Bu bir ListTile !",
              style: TextStyle(
                  fontWeight:
                      FontWeight.bold)), // Title kısmı, buraya istediğiniz Widget tasarımını koyabilirsiniz. Ben örnek olarak Text Widget kullandım.
          subtitle: const Text(
              "Bu görünümü bir çok yerde kullanabilirsiniz."), // Açıklama kısmı, buraya istediğiniz Widget tasarımını koyabilirsiniz. Ben örnek olarak Text Widget kullandım.
          trailing: const Icon(Icons.star_rate, color: Colors.red), // En sağ kısma gelecek icon veya koymak istediğiniz bir Widget
          onTap: () => print("ListTile tıklama işlemi başarılı !"), // ListTile tıklama özelliği
        ),
      ),
    );
  }
}
