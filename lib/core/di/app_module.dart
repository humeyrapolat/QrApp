import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @Environment(Environment.prod)
  @lazySingleton
  GetStorage get storage {
    return GetStorage();
  }

  @Environment(Environment.prod)
  @preResolve
  Future<bool> get initializeGetStorage {
    return GetStorage.init();
  }
}
