import 'package:memorymate/model/user.dart';


const Duration connectionTimeout = Duration(seconds: 1000);
const Duration receiveTimeout = Duration(seconds: 1000);
//  const String baseUrl = "http://10.0.2.2:3000/api/v1/";
// const String baseUrl = "http://localhost:2500/api/v1/";
// const String baseUrl = "http://10.0.2.2:2500/";  // for emulator only 
const String baseUrl = "http://192.168.254.252:2500/";  // for real device
// const String baseUrl = "http://192.168.4.4:3000/api/v1/";

// for token
String? tokenConstant;
User? loggedInUser;

// ====================== Auth Routes ======================
const String loginUrl = "user/login";
const String registerUrl = "user/register";

