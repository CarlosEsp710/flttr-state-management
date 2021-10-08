part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class ActiveUser extends UserEvent {
  final User user;
  ActiveUser(this.user);
}

class SetAge extends UserEvent {
  final int age;
  SetAge(this.age);
}

class AddProfession extends UserEvent {
  final String profession;
  AddProfession(this.profession);
}

class DeleteUser extends UserEvent {}
