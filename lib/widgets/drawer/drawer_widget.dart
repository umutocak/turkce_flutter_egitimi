import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  String selectedPage = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Kullanımı'),
      ),
      //? Drawer tanımlamamızı yapıyoruz
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            //? DrawerHeader: Drawer'ın en üst kısmını ifade eder.
            const DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                //? Fit: Resmi nasıl ayarlayacağını belirtir. Tamamen kapla, resim boyutunu al vb.
                fit: BoxFit.fill,
                image: NetworkImage("https://avatars.githubusercontent.com/u/48753655?v=4"),
              )),
              child: Text('Umut Ocak', style: TextStyle(color: Colors.black, fontSize: 24)),
            ),
            //? Drawer içerisine eklediğimiz menüler
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Projelerim'),
              onTap: () {
                //? State yönetimini kullanıyorsanız setState kullanmayınız.
                setState(() {
                  selectedPage = 'Projelerim';
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Profilim'),
              onTap: () {
                setState(() {
                  selectedPage = 'Profilim';
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Ayarlar'),
              onTap: () {
                setState(() {
                  selectedPage = 'Ayarlar';
                });
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Seçilen Sayfa: $selectedPage'),
      ),
    );
  }
}
