# CircleAvatar Kullanımı

CircleAvatar, görsellerinizi profil resmi görünümü tarzında yapmaya yarar. Yani bir daire gibi göstermenize olanak sağlar. Çok basit bir şekilde kullanabilirsiniz. Bazı parametreleri şunlardır :

- radius: Dairenin büyüklüğünü buradan ayarlayabilirsiniz.
- backgroundImage: CircleAvatar kullanırken görselinizi bu kısma tanımlamalısınız. Doğru bir görünüm elde etmek için bu kısmı kullanmalısınız. Bu kısım **NetworkImage("url")** olarak destek sağlamaktadır. Url kısmına görselinizin dosya uzantısını yazmalısınız. Eğer lokal bir resim kullanıyorsanız **AssetImage("url")** olarak kullanmalısınız. Image.network veya Image.asset burada **kullanılamaz.**

Kullanım örneğini circle_avatar_widget.dart dosyasından görebilirsiniz.