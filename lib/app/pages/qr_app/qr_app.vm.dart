import 'package:injectable/injectable.dart';
import 'package:qr_app/core/base/base_view_model.dart';

@injectable
class QrAppViewModel extends BaseViewModel {
  bool _isDark = false;

  bool get isDark => _isDark;
  void switchTheme() {
    _isDark = !_isDark;
    notifyListeners();
  }
}
