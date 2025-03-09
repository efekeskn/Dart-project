//class declaration/definition = sınıf tanımlama
//sınıf != obje
class Ogrenci {

  int? _no;
  String? _ad;

  set setNo(int no) {
    //....
    this._no = no;
  }

  int? get getNo {
    //...
    return this._no;
  }

  String adinNe() {
    return "Merhaba benim adım $_ad";
  }

  void sarkiSoyle() {
    print("Şuan senin için şarkı söylüyorum...");
  }

  double sinavdanKacAldin(String dersKodu) {
    if (dersKodu == "MP1") {
      return 98.98;
    } else {
      return 85.00;
    }
  }

}