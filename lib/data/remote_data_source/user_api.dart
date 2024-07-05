import 'package:dio/dio.dart';
import 'package:memorymate/app/constant/http_services.dart';
import 'package:memorymate/app/constant/api_endpoint.dart';
import 'package:memorymate/data/login_response.dart';
import 'package:memorymate/model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserAPI {
  Future<bool> registerUser(User user) async {
    bool isRegister = false;
    Dio dio = HttpServices().getDioInstance();
    try {
      Response response = await dio.post(registerUrl, data: user.toJson());
      if (response.statusCode == 200) {
        isRegister = true;
        return isRegister;
      }
    } catch (e) {
      print("Error: $e");
    }
    return isRegister;
  }

  Future<bool> loginUser(String email, String password) async {
    bool isLogin = false;
    Dio dio = HttpServices().getDioInstance();
    try {
      Map<String, dynamic> loginUserData = {
        "email": email,
        "password": password
      };
      Response response = await dio.post(loginUrl, data: loginUserData);
      final LoginResponse parsedLoginResponse =
          LoginResponse.fromJson(response.data);
      if (parsedLoginResponse.success == true) {
        tokenConstant = parsedLoginResponse.token;
        final sharedPref = await SharedPreferences.getInstance();
        sharedPref.setString("token", tokenConstant!);
        isLogin = true;
        return isLogin;
      }
    } catch (e) {
      print(e);
    }
    return isLogin;
  }
}
