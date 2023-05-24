import 'package:flutter/services.dart';

import 'models/models.dart';

class OkAuthHelpers {
  OkAuthHelpers();

  OkAuthResponse handleLoginJsonResponse(final Map? dynamicJson) {
    if (dynamicJson == null) throw const OkAuthErrorException();
    final json = Map.castFrom<dynamic, dynamic, String, dynamic>(dynamicJson);
    if (dynamicJson.containsKey('error')) {
      throw OkAuthException.errorFromJson(json);
    }
    return OkAuthResponse.fromJson(json);
  }

  void handleLoginPlatformException(final PlatformException e) {
    switch (e.code) {
      case 'error' when e.details == 'access_denied':
        throw const OkAuthCancelException();
      case 'error':
        throw OkAuthException.errorFromJson(
          {
            'message': e.message,
            'details': e.details,
          },
        );
      case 'cancel':
        throw const OkAuthCancelException();
    }
    switch (e.details) {
      case 'access_denied':
        throw const OkAuthCancelException();
    }
  }
}
