// core/helper_functions/get_user.dart
import 'dart:convert';

import 'package:fruits_app/constant.dart';
import 'package:fruits_app/core/services/shared_preferences_singleton.dart';
import 'package:fruits_app/features/auth/data/models/user_model.dart';
import 'package:fruits_app/features/auth/domain/entities/user_entity.dart';

UserEntity getUser(){
  var jsonString=SharedPreferencesSingleton.getString(kUser);
  var userEntity=UserModel.fromJson(jsonDecode(jsonString));
  return userEntity;
}