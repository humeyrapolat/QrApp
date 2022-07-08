import 'package:injectable/injectable.dart';
import 'package:qr_app/core/base/base_view_model.dart';

@injectable
class RootViewModel extends BaseViewModel {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  setCurrentIndex(int currentIndex) {
    print(currentIndex);
    _currentIndex = currentIndex;
    notifyListeners();
  }
}
