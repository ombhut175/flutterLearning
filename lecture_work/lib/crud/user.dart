import 'dart:io';

import 'package:lecture_work/utils/string_const.dart';

class User {
  List<Map<String, dynamic>> userList = [];

  void addUser({required name, required age, required email}) {
    Map<String, dynamic> user = {};
    user[NAME] = name;
    user[AGE] = age;
    user[EMAIL] = email;
    userList.add(user);
  }

  List<Map<String, dynamic>> getUsers() {
    return userList;
  }

  Map<String, dynamic> getUserById({required id}) {
    return userList.elementAt(id);
  }

  void deleteUserById({required id}) {
    userList.removeAt(id);
  }

  void updateUser({required name, required age, required email, required id}) {
    Map<String, dynamic> user = {};
    user[NAME] = name;
    user[AGE] = age;
    user[EMAIL] = email;
    userList[id] = user;
  }

  void updateUserRequired(
      {String? name, int? age, String? email, required id}) {
    Map<String, dynamic> updates = {
      if (name != null) NAME: name,
      if (age != null) AGE: age,
      if (email != null) EMAIL: email
    };

    userList[id].addAll(updates);
  }

  void searchDetail({required searchData}) {
    for (var user in userList) {
      if (user[NAME]
              .toString()
              .toLowerCase()
              .contains(searchData.toString().toLowerCase()) ||
          user[AGE]
              .toString()
              .toLowerCase()
              .contains(searchData.toString().toLowerCase()) ||
          user[EMAIL]
              .toString()
              .toLowerCase()
              .contains(searchData.toString().toLowerCase())) {
        stdout.writeln("${user[NAME]} - ${user[AGE]} - ${user[EMAIL]}");
      }
    }
  }

  List<Map<String,dynamic>> searchDetailUsingEmail({required searchData}) {
    List<Map<String,dynamic>> searchedUsers = [];
    for (var user in userList) {
      if (user[EMAIL]
          .toString()
          .toLowerCase()
          .contains(searchData.toString().toLowerCase())) {
        searchedUsers.add(user);
      }
    }
      return searchedUsers;
  }
}
