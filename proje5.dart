// 1. Çalışan sınıfı (Employee) - Temel özellikler ve fonksiyon
class Calisan {
  String _isim;
  double _maas;
  String _departman;

  // Constructor
  Calisan(this._isim, this._maas, this._departman);

  // Getter ve Setter
  String get isim => _isim;
  set isim(String value) {
    _isim = value;
  }

  double get maas => _maas;
  set maas(double value) {
    _maas = value;
  }

  String get departman => _departman;
  set departman(String value) {
    _departman = value;
  }

  // Polimorfizm için boş bir metod
  void calis() {
    print("Çalışan çalışıyor...");
  }
}

// 2. Mühendis sınıfı (Engineer)
class Muhendis extends Calisan {
  String uzmanlikAlani;

  Muhendis(String isim, double maas, String departman, this.uzmanlikAlani)
      : super(isim, maas, departman);

  // calis metodunu override et
  @override
  void calis() {
    print("$isim mühendislik problemleri çözüyor...");
  }
}

// 3. Doktor sınıfı (Doctor)
class Doktor extends Calisan {
  String brans;

  Doktor(String isim, double maas, String departman, this.brans)
      : super(isim, maas, departman);

  // calis metodunu override et
  @override
  void calis() {
    print("$isim hastaları tedavi ediyor...");
  }
}

// 4. Öğretmen sınıfı (Teacher)
class Ogretmen extends Calisan {
  String ders;

  Ogretmen(String isim, double maas, String departman, this.ders)
      : super(isim, maas, departman);

  // calis metodunu override et
  @override
  void calis() {
    print("$isim öğrencilere $ders dersi veriyor...");
  }
}

void main() {
  // Çalışanları oluştur
  var muhendis = Muhendis("Ali", 5000, "Mühendislik", "Yazılım");
  var doktor = Doktor("Ayşe", 8000, "Hastane", "Kardiyoloji");
  var ogretmen = Ogretmen("Mehmet", 4000, "Okul", "Matematik");

  // Çalışanları bir listeye ekle
  List<Calisan> calisanlar = [muhendis, doktor, ogretmen];

  // Her çalışanın calis metodunu çağır
  for (var calisan in calisanlar) {
    calisan.calis();
  }

  // Getter ve Setter örneği
  print("\nÇalışan bilgileri:");
  print("Mühendis: ${muhendis.isim}, Maaş: ${muhendis.maas}, Departman: ${muhendis.departman}, Uzmanlık Alanı: ${muhendis.uzmanlikAlani}");
  muhendis.maas = 5500; // Setter kullanımı
  print("Yeni maaş: ${muhendis.maas}");
}
