// ignore_for_file: depend_on_referenced_packages
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:desktop_webview_auth/desktop_webview_auth.dart';
import 'package:desktop_webview_auth/google.dart';
import 'package:get/get.dart';
import 'package:sfera_app_1/features/presentation/resources/app_constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../service_locator.dart';

part 'sfera_bloc.freezed.dart';

class SferaBloc extends Bloc<SferaEvents, SferaStates> {
  SferaBloc() : super(const SferaStates.initial()) {
    ///Login by email
    on<_LoginByEmail>(
      (event, emit) async {
        if (event.isValid) {
          try {
            emit(const SferaStates.openloading());
            await sl<FirebaseAuth>().signInWithEmailAndPassword(
              email: event.email,
              password: event.password,
            );
            emit(const SferaStates.closeloading());
            emit(const SferaStates.success());
          } on FirebaseAuthException catch (e) {
            emit(const SferaStates.closeloading());
            print(e.code);
            if (e.code == 'user-not-found') {
              emit(
                SferaStates.error(
                  message: 'User not found',
                ),
              );
            } else if (e.code == 'wrong-password') {
              emit(
                SferaStates.error(
                  message: 'wrong'.tr,
                ),
              );
            } else if (e.code == 'too-many-attempts-try-later') {
              emit(
                SferaStates.error(
                  message: 'Too many attempts Try later'.tr,
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

    ///Login by Google
    on<_LoginByGoogle>(
      (event, emit) async {
        final googleSignInArgs = GoogleSignInArgs(
          clientId: AppConstants.clientId,
          redirectUri: AppConstants.redirectUri,
          scope: 'email',
        );
        try {
          final result = await DesktopWebviewAuth.signIn(event.args);
          final credential =
              GoogleAuthProvider.credential(accessToken: result?.accessToken);
          emit(const SferaStates.openloading());
          await sl<FirebaseAuth>().signInWithCredential(credential);
          emit(const SferaStates.closeloading());
          emit(const SferaStates.success());
        } on FirebaseAuthException catch (e) {
          print(e.code);
          emit(SferaStates.error(message: e.code));
        }
      },
    );

    ///Update name
    on<_UpdateName>((event, emit) async {
      final user = sl<FirebaseAuth>().currentUser;
      try {
        emit(const SferaStates.openloading());
        await user?.updateDisplayName(event.name);
        emit(const SferaStates.closeloading());
        emit(const SferaStates.success());
      } catch (e) {
        emit(const SferaStates.error(message: 'oops, try again'));
      }
    });
  }
}

@freezed
class SferaStates with _$SferaStates {
  const factory SferaStates.closeloading() = _CloseLoading;
  const factory SferaStates.openloading() = _OpenLoading;
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
  const factory SferaEvents.loginByGoogle({required ProviderArgs args}) =
      _LoginByGoogle;
  const factory SferaEvents.updateName({required String name}) = _UpdateName;
}
