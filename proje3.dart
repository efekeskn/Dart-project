class Araba {
  String marka;
  int model;
  int _hiz; // private değişken

  // Yapıcı metodda tüm değişkenler başlatıldı
  Araba(this.marka, this.model, this._hiz);

  // Getter
  int get hiz => _hiz;

  // Setter
  set hiz(int yeniHiz) {
    if (yeniHiz >= 0) {
      _hiz = yeniHiz;
    } else {
      print("Hız negatif olamaz!");
    }
  }

  void hizartir(int a) {
    hiz += a; // Setter kullanıyoruz
  }

  void hizazalt(int a) {
    hiz -= a; // Setter kullanıyoruz
  }

  void tanit() {
    print("Araba markası: $marka, Modeli: $model, Hızı: $hiz km/s");
  }
}

void main() {
  // 'araba' nesnesini başlatıyoruz
  Araba araba = Araba("Fiat", 2012, 90);
  araba.tanit();
  araba.hizartir(20);
  araba.tanit();
  araba.hizazalt(20);
  araba.tanit();
  araba.hizazalt(150); // Negatif hız testini yap
  araba.tanit();
}
