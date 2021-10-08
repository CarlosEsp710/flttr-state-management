import 'package:get/get.dart';

import 'package:state_management/models/user.dart';

class UserController extends GetxController {
  var currentUser = false.obs;
  var user = User().obs;

  void loadUser(User user) {
    currentUser.value = true;
    this.user.value = user;
  }

  void setAge(int age) {
    user.update((val) {
      val!.age = age;
    });
  }

  void addProfession(String profession) {
    user.update((val) {
      val!.professions = [...val.professions, profession];
    });
  }
}
