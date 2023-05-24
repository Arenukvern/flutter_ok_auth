import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';

import 'models/models.dart';

class OkAuthIosImpl {
  Future<OkAuthResponse> login({
    required final String appId,
  }) async {
    final redirectUri = 'ok$appId://authorize';

    /// add check is user logged in
    final uri = Uri(
      scheme: 'https',
      host: 'connect.ok.ru',
      path: '/oauth/authorize',
      queryParameters: {
        'client_id': appId,
        'scope': 'VALUABLE_ACCESS',
        'response_type': 'token',
        'redirect_uri': redirectUri,
        'layout': 'm',
        'state': 'odnoklassniki',
      },
    );
    // Present the dialog to the user
    final result = await FlutterWebAuth2.authenticate(
      url: '$uri',
      callbackUrlScheme: 'https',
    );

    final response = Uri.splitQueryString(
      result.replaceFirst('$redirectUri#', ''),
    );
    if (response.containsKey('error')) {
      throw OkAuthException.error(error: response);
    }

    return OkAuthResponse.fromJson(response);
  }
}
