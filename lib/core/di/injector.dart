/*
 * Copyright (c) 2023.
 * Author: Jiten Basnet
 * Company: EB Pearls
 */

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(initializerName: r'$initGetIt', asExtension: false)
Future<void> configureInjection() async {
  $initGetIt(getIt, environment: Environment.prod);
}
