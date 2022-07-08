import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'locator.config.dart';

GetIt getIt = GetIt.instance;
@InjectableInit()
Future setupDI(String environment) =>
    $initGetIt(getIt, environment: environment);
