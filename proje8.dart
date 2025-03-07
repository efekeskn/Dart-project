import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchUser() async {
  final url = Uri.parse("https://jsonplaceholder.typicode.com/users/1");

  final response = await http.get(url);

  if (response.statusCode == 200) {
    Map<String, dynamic> userData = jsonDecode(response.body);
    print("Kullanıcı Adı: ${userData['name']}");
  } else {
    print("Hata: ${response.statusCode}");
  }
}

void main() async {
  print("Veri çekiliyor...");
  await fetchUser();
  print("İşlem tamamlandı!");
}
