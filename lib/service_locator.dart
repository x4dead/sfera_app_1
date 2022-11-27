// ignore_for_file: unused_import, depend_on_referenced_packages

// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:sfera_app_1/features/presentation/bloc/sfera_bloc.dart';
import 'package:sfera_app_1/features/presentation/bloc/theme_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Bloc, Cubit
  sl.registerFactory<SferaBloc>(() => SferaBloc());
  sl.registerLazySingleton<ThemeCubit>(() => ThemeCubit());
  //Firebase
  sl.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
}
