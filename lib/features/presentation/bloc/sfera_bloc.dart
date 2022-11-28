import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import '../../../service_locator.dart';

part 'sfera_bloc.freezed.dart';

class SferaBloc extends Bloc<SferaEvents, SferaStates> {
  SferaBloc() : super(const SferaStates.initial()) {
    on<_LoginByEmail>(
      (event, emit) async {
        if (event.isValid) {
          emit(const SferaStates.loading());
          try {
            await sl<FirebaseAuth>().signInWithEmailAndPassword(
              email: event.email,
              password: event.password,
            );
            emit(const SferaStates.success());
          } on FirebaseAuthException catch (e) {
            if (e.code == 'user-not-found' || e.code == 'wrong-password') {
              emit(
                SferaStates.error(
                  message: 'wrong'.tr,
                ),
              );
            } else {
              emit(
                SferaStates.error(
                  message: 'unknown'.tr,
                ),
              );
            }
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
      required bool isValid}) = _LoginByEmail;
  const factory SferaEvents.loginByGoogle() = _LoginByGoogle;
}
