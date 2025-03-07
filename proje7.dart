Future<String> uzunSurenIslem() {
  return Future.delayed(Duration(seconds: 2), () {
    return "İşlem tamamlandı!";
  });
}

void main() {
  print("İşlem başlatıldı...");
  
  uzunSurenIslem().then((sonuc) {
    print(sonuc);  // 2 saniye sonra çalışır
  });

  print("İşlem devam ediyor...");
}
