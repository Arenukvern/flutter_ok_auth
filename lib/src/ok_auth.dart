import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'models/models.dart';

class OkAuth {
  OkAuth._();
  @visibleForTesting
  static MethodChannel get channel => const MethodChannel('flutter_ok_sdk');

  static Future<OkAuthResponse> login() async {
    final dynamicData = await channel.invokeMethod('login');
    final json = Map<String, dynamic>.from(dynamicData);
    if (json.containsKey('error')) {
      throw OkAuthErrorException.fromJson(json);
    }
    return OkAuthResponse.fromJson(json);
  }
}
