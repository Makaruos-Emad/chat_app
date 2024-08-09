import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  UserCredential? user;
  Future<void> loginUser(
      {required String email, required String password}) async {
    emit(LoginLoadingState());
    try {
      user = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(LoginSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        emit(LoginFailureState(errMessage: 'No user found for that email.'));
      } else if (e.code == 'invalid-credential') {
        emit(LoginFailureState(
            errMessage: 'Wrong password provided for that user.'));
      }
    } catch (e) {
      emit(LoginFailureState(errMessage: 'Something Went Worng'));
    }
  }
}
