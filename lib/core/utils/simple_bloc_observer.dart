import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    log("onChange : ${change.toString()}" );
  }

  @override
  void onClose(BlocBase bloc) {
    log("onClose : ${bloc.toString()}" );
  }

  @override
  void onCreate(BlocBase bloc) {
    log("onCreate : ${bloc.toString()}" );
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log("onError : ${bloc.toString()} and Error is : ${error.toString()}" );
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    log("onEvent : ${bloc.toString()} and Event is : ${event.toString()}" );
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    log("onTransition : ${bloc.toString()} and Transition is : ${transition.toString()}" );
  }
}
