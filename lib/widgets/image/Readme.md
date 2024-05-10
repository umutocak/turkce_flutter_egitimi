# Image Kullanımı

Image ile uygulama içerisine görseller ekleyebilirsiniz. İki farklı kullanımı mevcuttur.
- Image.network => İnternet üzerindeki herhangi bir görsel için kullanabilirsiniz. API tarafından gelecek görselleri bu şekilde gösterebilirsiniz.
- Image.asset => Lokal olarak barındığınız görselleri göstermek için kullanabilirsiniz.
- width ve height ile görselin boyutlarını ayarlayabilirsiniz.
- fit: kısmı ile görselin, verdiğiniz boyuta tam uymasını veya width veya height kısımlarının net bir şekilde durmasını ayarlayabilirsiniz.

# Cached Image Kullanımı

Cached image ile görsellerinizi ön bellek üzerine alabilir, yüklenme esnasında kolay bir şekilde yükleniyor ifadesi koyabilir ve hata durumunda ise istediğiniz Widget türünü koyabilirsiniz.

- placeHolder: Yükleniyor kısmını ekleyebileceğiniz alandır.
- errorWidget: Hata durumunda istediğiniz tasarımı veya görseli göstereceğiniz kısımdır.
- imageUrl: Yükleme gerçekleştiğinde görünecek resimdir.

Kullanım örneklerini image klasörü içerisinden görebilirsiniz.