import 'package:hive_flutter/hive_flutter.dart';

import '../../../main.dart';

class LocalDatabase {
//Initialise DB
  Future<void> dataBaseInitialise() async {
    await Hive.initFlutter();
    await Hive.openBox('loginDb');
    getUserDetails();
  }

//To add user Details
  Future<void> addUserDetails(
    String userToken,
    String userName,
  ) async {
    final loginDb = Hive.box('loginDb');
    await loginDb.put('userTokenKey', userToken);
    await loginDb.put('userNameKey', userName);
    // custUserToken = userToken;
    // custUserName = userName;
    await getUserDetails();
  }

// To fetch user Details
  Future<void> getUserDetails() async {
    final loginDb = Hive.box('loginDb');
    final userToken = loginDb.get('userTokenKey');
    final userName = loginDb.get('userNameKey');
    custUserToken = userToken ?? '';
    custUserName = userName ?? '';
    // print('custUserToken : $custUserToken');
    // print('custUserName : $custUserName');
  }

// // To clear local db when user logs out
  Future<void> clearUserDetails() async {
    final loginDb = Hive.box('loginDb');
    await loginDb.delete('userTokenKey');
    await loginDb.delete('userNameKey');
    getUserDetails();
  }
}
