import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:state_management/models/user.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<ActiveUser>((event, emit) => emit(state.copyWith(user: event.user)));

    on<SetAge>((event, emit) =>
        emit(state.copyWith(user: state.user!.copyWith(age: event.age))));

    on<AddProfession>((event, emit) => emit(state.copyWith(
          user: state.user!.copyWith(
            professions: [
              ...state.user!.professions,
              event.profession,
            ],
          ),
        )));

    on<DeleteUser>((event, emit) => emit(UserInitial()));
  }
}
