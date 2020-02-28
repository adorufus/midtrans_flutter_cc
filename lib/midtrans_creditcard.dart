import 'dart:async';

import 'package:flutter/services.dart';

class MidtransCreditcard {
  static const MethodChannel _channel =
      const MethodChannel('midtrans_creditcard');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static void showToast(String message) {
    _channel.invokeMethod('showToast', {"message": message});
  }

  static Future initSDK({String client_key, String base_url}){

  }
}
