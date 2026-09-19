import 'package:doctor_flu/features/sign_up/domain/signup_repo_impl.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this._repo) : super(SignUpInitial());

  final SignupRepoImpl _repo;

  Future<void> register(String name, String email, String password) async {
    emit(SignUpLoading());
    final success = await _repo.signup(name, email, password);
    if (success) {
      emit(SignUpSuccess());
    } else {
      emit(SignUpFailure('Please complete all the fields'));
    }
  }
}

@immutable
abstract class SignUpState {}

class SignUpInitial extends SignUpState {}

class SignUpLoading extends SignUpState {}

class SignUpSuccess extends SignUpState {}

class SignUpFailure extends SignUpState {
  final String message;
  SignUpFailure(this.message);
}
