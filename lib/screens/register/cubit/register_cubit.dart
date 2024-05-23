import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:mywatchstore/data/constant.dart';
import 'package:mywatchstore/data/model/user.dart';
import 'package:mywatchstore/utils/shared_prefrences_constant.dart';
import 'package:mywatchstore/utils/shared_prefrences_manager.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  Dio _dio = Dio();

  pickTheLocation({required BuildContext context}) async {
    await showSimplePickerLocation(
            isDismissible: true,
            title: "انتخاب موقعیت مکانی",
            textConfirmPicker: "ثبت موقعیت",
            textCancelPicker: "لغو",
            initPosition: GeoPoint(latitude: 36.3156, longitude: 59.5680),
            zoomOption: const ZoomOption(initZoom: 8),
            radius: 8.0,
            context: context)
        .then((value) => emit(LocationPickedState(location: value)));
  }

  register({required User user}) async {
    emit(RegisterLoadingState());
    try {
      String? token =
          SharedPreferencesManager().getString(SharedPrefrencesConstant.token);

      _dio.options.headers["Authorization"] = "Bearer $token";

      await _dio.post(EndPoints.register, data: user.toMap()).then((value) {
        if (value.statusCode == 201) {
          emit(RegisterOkResponseState());
        } else {
          emit(RegisterErrorState());
        }
        return;
      });
    } catch (e) {
      emit(RegisterErrorState());
    }
  }
}
