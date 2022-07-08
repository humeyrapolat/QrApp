import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_app/core/di/locator.dart';

import 'base_view_model.dart';

abstract class BaseWidget<T extends BaseViewModel> extends Widget {
  const BaseWidget({Key? key}) : super(key: key);

  @protected
  Widget build(BuildContext context, T viewModel);

  @protected
  onModelReady(BuildContext context, T viewModel) {}

  @override
  DataProviderElement<T> createElement() => DataProviderElement<T>(this);
}

class DataProviderElement<T extends BaseViewModel> extends ComponentElement {
  DataProviderElement(BaseWidget widget) : super(widget);
  @override
  BaseWidget get widget => super.widget as BaseWidget;

  T model = getIt<T>();
  @override
  Widget build() => ChangeNotifierProvider<T>(
        create: (_) {
          widget.onModelReady(this, model);
          return model;
        },
        child: Consumer<T>(
          builder: ((context, value, _) {
            return widget.build(context, value);
          }),
        ),
      );
}
