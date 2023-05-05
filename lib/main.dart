/*
* @Author:Jiten Basnet on 05/05/2023
* @Company: GTEN SOFTWARE PVT.LTD
*/

import 'package:flutter_gcaptcha_v3/recaptca_config.dart';

import 'recaptcha_keys.dart';

final mySingleton =
    RecaptchaConfig(keys: RecaptchaKeys.ready(siteKey: '', secrete: '')).execute();
