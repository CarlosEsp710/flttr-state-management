part of 'user_bloc.dart';

class UserState {
  final bool currentUser;
  final User? user;

  const UserState({User? user})
      // ignore: prefer_initializing_formals
      : user = user,
        currentUser = (user != null) ? true : false;

  UserState copyWith({User? user}) => UserState(user: user ?? this.user);
}

class UserInitial extends UserState {}
