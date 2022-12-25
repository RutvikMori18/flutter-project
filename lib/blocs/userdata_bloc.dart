import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_example/model/UsetDataModel.dart';
import 'package:bloc_example/repository/repo.dart';
import 'package:equatable/equatable.dart';

part 'userdata_event.dart';
part 'userdata_state.dart';

class UserdataBloc extends Bloc<UserdataEvent, UserdataState> {
  final Userdata _userdata;

  //here we will give initial state of our state
  UserdataBloc(this._userdata) : super(UserdataInitial()) {
    on<UserdataEvent>((event, emit) async {
      // TODO: implement event handler
      emit(UserdataInitial());

      try {
        final users = await _userdata.userData();
        emit(UserdataSuccess(users));
      } catch (e) {
        emit(UserdataError(e.toString()));
      }
    });
  }
}
