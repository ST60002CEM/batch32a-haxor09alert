import 'package:memorymate/data/remote_data_source/user_api.dart';
import 'package:memorymate/model/user.dart';

class UserRepository{
  Future<bool> registerUser(User user) async {
    return await UserAPI().registerUser(user);
  }

Future<bool?> loginUser(String email, String password) async {
  return UserAPI().loginUser(email, password);
}

}