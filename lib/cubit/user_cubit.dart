import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:state_management/models/user.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  void setUser(User user) {
    emit(ActiveUser(user));
  }

  void setAge(int age) {
    final currentState = state;

    if (currentState is ActiveUser) {
      final user = currentState.user.copyWith(age: 20);

      emit(ActiveUser(user));
    }
  }

  void setProfession(String profession) {
    final currentState = state;

    if (currentState is ActiveUser) {
      final newProfession = [
        ...currentState.user.professions,
        profession,
      ];

      final user = currentState.user.copyWith(professions: newProfession);

      emit(ActiveUser(user));
    }
  }

  void deleteUser() {
    emit(UserInitial());
  }
}
