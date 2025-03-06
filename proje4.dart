class Hayvan {
  String isim;
  String tur;

  Hayvan(this.isim, this.tur);

  void sesCikar() {
    print("$isim, $tur ses çıkarıyor.");
  }
}

class Kopek extends Hayvan {
  Kopek(String isim, String tur) : super(isim, tur);

  @override
  void sesCikar() {
    print("$isim, Hav Hav!");
  }
}

// Kedi sınıfı, Hayvan sınıfından türemekte.
class Kedi extends Hayvan {
  Kedi(String isim, String tur) : super(isim, tur);

  // Kedinin ses çıkarma özelleştirilmiş fonksiyonu.
  @override
  void sesCikar() {
    print("$isim, Miyav Miyav!");
  }
}

void main() {
  // Hayvan sınıfından örnek
  Hayvan hayvan = Hayvan("Hayvan", "Genel");
  hayvan.sesCikar();

  // Köpek sınıfından örnek
  Kopek kopek = Kopek("Karabas", "Köpek");
  kopek.sesCikar();

  // Kedi sınıfından örnek
  Kedi kedi = Kedi("Maviş", "Kedi");
  kedi.sesCikar();
}
