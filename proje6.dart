import 'dart:convert';

class User {
  int id;
  String name;
  String email;
  int age;

  // Constructor
  User(this.id, this.name, this.email, this.age);

  // JSON'dan nesneye dönüştürme metodu
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      json['id'],
      json['name'],
      json['email'],
      json['age'],
    );
  }

  // Nesneyi JSON formatına çevirme metodu
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'age': age,
    };
  }
}

void main() {
  // JSON string
  String jsonString = '{"id": 1, "name": "Efe", "email": "efe@example.com", "age": 20}';
  
  // JSON'u Map'e dönüştürme
  Map<String, dynamic> userMap = jsonDecode(jsonString);
  
  // Map'i User nesnesine dönüştürme
  User user = User.fromJson(userMap);
  
  // Kullanıcı bilgilerini yazdırma
  print("Kullanıcı Adı: ${user.name}");
  
  // User nesnesini JSON string'e dönüştürme
  String newJson = jsonEncode(user.toJson());
  print("JSON Formatı: $newJson");
}
