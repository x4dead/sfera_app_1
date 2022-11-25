import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sfera_bloc.freezed.dart';

class SferaBloc extends Bloc<SferaEvents, SferaStates> {
  SferaBloc() : super(const SferaStates.initial()) {
    on<_LoginByEmail>(
      (event, emit) async {
        emit(const SferaStates.loading());
        final isValid = event.formKey;
        if (isValid != null) return;
        try {
          await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: event.email.trim(),
            password: event.password.trim(),
          );
          emit(const SferaStates.success());
        } on FirebaseAuthException catch (e) {
          print(e.code);

          if (e.code == 'user-not-found' || e.code == 'wrong-password') {
            emit(
              const SferaStates.error(
                message: 'Неправильный email или пароль. Повторите попытку',
              ),
            );
          } else {
            emit(
              const SferaStates.error(
                message:
                    'Неизвестная ошибка! Попробуйте еще раз или обратитесь в поддержку.',
              ),
            );
          }
        }
      },
    );
  }
}

@freezed
class SferaStates with _$SferaStates {
  const factory SferaStates.loading() = _Loading;
  const factory SferaStates.error({required String message}) = _Error;
  const factory SferaStates.success() = _Success;
  const factory SferaStates.initial() = _Initial;
}

@freezed
class SferaEvents with _$SferaEvents {
  const factory SferaEvents.loginByEmail(
      {required String email,
      required String password,
      required bool Function()? formKey}) = _LoginByEmail;
  const factory SferaEvents.loginByGoogle() = _LoginByGoogle;
  const factory SferaEvents.forgotPassword() = _ForgotPassword;
}
