import 'package:flutter/material.dart';
import 'package:qr_app/app/pages/qr_app/qr_app.vm.dart';
import 'package:qr_app/app/pages/root/root.dart';
import 'package:qr_app/core/base/base_widget.dart';
import 'package:qr_app/core/res/colors.dart';

class QrApp extends BaseWidget<QrAppViewModel> {
  const QrApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, QrAppViewModel viewModel) {
    return MaterialApp(
      theme: ThemeData(
          brightness: viewModel.isDark ? Brightness.dark : Brightness.light,
          primarySwatch: AppColors.primarySwatch,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              type: BottomNavigationBarType.fixed,
              selectedIconTheme: IconThemeData(color: Colors.blue),
              unselectedIconTheme: IconThemeData(color: Colors.grey))),
      home: RootPage(),
    );
  }
}
