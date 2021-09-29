// untuk melakukan request ke dalam backend
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/models/user_model.dart';

// untuk melakukan request kedalam backend
class AuthService {
  // String baseUrl = 'https://b355-114-4-215-64.ap.ngrok.io/api';
    String baseUrl = 'https://shamo-backend.buildwithangga.id/api';

  // lalu buat function bertipe future
  Future<UserModel> register({
    required String name,
    required String username,
    required String email,
    required String password,
  }) 
  // tipe nya asyncronouse
  async {
    var url = '$baseUrl/register';
    var headers = {'Content-Type': 'application/json'};

    var body = jsonEncode({
      'name': name,
      'username': username,
      'email': email,
      'password': password,
    });

    // lalu buat variable untuk berkomunikasi dengan backend dengan http ke body
    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      // dari api kita amibil list yang berupa data
      var data = jsonDecode(response.body)['data'];
      // dari list data kita ambil lagi list user
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['access_token'];

      return user;
    } else {
      print("Gagal Register");
      throw Exception("Gagal Register");
    }
  }


  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    var url = '$baseUrl/login';
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'email': email,
      'password': password,
    });

    // lalu buat variable untuk berkomunikasi dengan backend
    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['access_token'];

      return user;
    } else {
      print("Gagal login");
      throw Exception("Gagal login");
    }
  }


}
