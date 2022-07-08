// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:get_storage/get_storage.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../../app/pages/qr_app/qr_app.vm.dart' as _i5;
import '../../app/pages/root/root.vm.dart' as _i6;
import '../../app/pages/settings/settings.vm.dart' as _i7;
import '../data/local_data_source.dart' as _i4;
import 'app_module.dart' as _i8;

const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appModule = _$AppModule();
  gh.lazySingleton<_i3.GetStorage>(() => appModule.storage,
      registerFor: {_prod});
  gh.singleton<_i4.ILocalDataSource>(_i4.LocalDataSource());
  gh.factory<_i5.QrAppViewModel>(() => _i5.QrAppViewModel());
  gh.factory<_i6.RootViewModel>(() => _i6.RootViewModel());
  gh.factory<_i7.SettingsViewModel>(() => _i7.SettingsViewModel());
  await gh.factoryAsync<bool>(() => appModule.initializeGetStorage,
      registerFor: {_prod}, preResolve: true);
  return get;
}

class _$AppModule extends _i8.AppModule {}
