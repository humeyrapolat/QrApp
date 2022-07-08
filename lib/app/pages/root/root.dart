import 'package:flutter/material.dart';
import 'package:qr_app/app/pages/root/root.vm.dart';
import 'package:qr_app/app/pages/settings/settings.dart';
import 'package:qr_app/core/base/base_widget.dart';

class RootPage extends BaseWidget<RootViewModel> {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, RootViewModel viewModel) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: viewModel.setCurrentIndex,
          currentIndex: viewModel.currentIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: "Scan"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Create"),
            BottomNavigationBarItem(
                icon: Icon(Icons.history), label: "History"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ]),
      body: IndexedStack(index: viewModel.currentIndex, children: [
        Text("Scan"),
        Text("Create"),
        Text("History"),
        SettingsPage()
      ]),
    );
  }
}
