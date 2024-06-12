import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  //? seçili olan bottom bar'ı belli eder.
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  //? Bottom Bar'ın indexine karşı gelecek olan sayfalarınızın listesidir.
  static const List<Widget> _widgetOptions = <Widget>[
    Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(''' Dostlar, alt menü kullanımını bu örnekteki gibi basit bir şekilde kullanabilirsiniz.
Bu sayfanın kodlarında gördüğünüz _selectedındex ve _widgetOptions kısımlarına dikkat ediniz.

Zira bu kodlar canlı bir projede, bir viewModel veya controller tarafında olmalıdır. Eğitim olduğundan dolayı
burada view içerisinde bulunmaktadır. Bu kodları projenize göre düzenleyebilirsiniz.

_selectedIndex : Bottom Bar elementin seçili olan indexini tutar ve buna göre ilgili widget'ı gösterim 
sağlarsınız.

_widgetOptions: Bu liste içerisine vereceğiniz widget'lar, index sayısına eşit olmalıdır. 3 bottom bar
mevcut ise 3 ayrı widget listede olmalıdır.
'''),
        ],
      ),
    ),
    Text('Hakkında', style: optionStyle),
    Text('Linknect', style: optionStyle),
  ];

  //? State yönetiminde setState kullanımı olmadığını göreceksiniz.
  void _onItemTapped(int index) {
    //? setState: Tüm sayfanın yeniden yazılmasına olanak sağlar, bu sayede seçili index değişir.
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        //? selectedIndex değerine göre body alanına gelecek widget
        body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            //? Alt menüde bulunan her bir element
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Anasayfa'),
            BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Hakkında'),
            BottomNavigationBarItem(icon: Icon(Icons.factory), label: 'Linknect'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ));
  }
}
