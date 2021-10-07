part of 'user_cubit.dart';

@immutable
abstract class UserState {}

class UserInitial extends UserState {
  final currentUser = false;
}

class ActiveUser extends UserState {
  final currentUser = true;
  final User user;

  ActiveUser(this.user);
}
