import 'package:injectable/injectable.dart';

abstract class ILocalDataSource {}

@Singleton(as: ILocalDataSource)
class LocalDataSource extends ILocalDataSource {}
