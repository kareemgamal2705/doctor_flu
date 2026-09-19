import 'package:doctor_flu/features/sign_in/domain/sign_in_repo_impl.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this._repo) : super(SignInInitial());

  final SignInRepoImpl _repo;

  Future<void> login(String email, String password) async {
    emit(SignInLoading());
    final success = await _repo.login(email, password);
    if (success) {
      emit(SignInSuccess());
    } else {
      emit(SignInFailure('Invalid email or password'));
    }
  }
}

@immutable
abstract class SignInState {}

class SignInInitial extends SignInState {}

class SignInLoading extends SignInState {}

class SignInSuccess extends SignInState {}

class SignInFailure extends SignInState {
  final String message;
  SignInFailure(this.message);
}
