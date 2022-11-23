// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sfera_bloc.freezed.dart';

class SferaBloc extends Bloc<SferaEvents, SferaStates> {
  SferaBloc() : super(const SferaStates.initial()) {
    on<_LoginByEmail>((event, emit) async {
      emit(const SferaStates.loading());
      try {
        // await FirebaseAuth.instance.signInWithEmailAndPassword(
        //   email: event.email,
        //   password: event.password,
        // );
        emit(const SferaStates.success());
      } catch (e) {
        emit(const SferaStates.error());
      }
    });
  }
}

@freezed
class SferaStates with _$SferaStates {
  const factory SferaStates.loading() = _Loading;
  const factory SferaStates.error() = _Error;
  const factory SferaStates.success() = _Success;
  const factory SferaStates.initial() = _Initial;
}

@freezed
class SferaEvents with _$SferaEvents {
  const factory SferaEvents.loginByEmail(
      {required String email, required String password}) = _LoginByEmail;
  const factory SferaEvents.loginByGoogle() = _LoginByGoogle;
  const factory SferaEvents.forgotPassword() = _ForgotPassword;
}
