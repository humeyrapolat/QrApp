import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_app/app/pages/qr_app/qr_app.vm.dart';
import 'package:qr_app/app/pages/settings/settings.vm.dart';
import 'package:qr_app/core/base/base_widget.dart';

class SettingsPage extends BaseWidget<SettingsViewModel> {
  const SettingsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, SettingsViewModel viewModel) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        body: ListView(
          children: [
            Card(
              child: Column(
                children: [
                  SwitchListTile(
                    value: context.watch<QrAppViewModel>().isDark,
                    onChanged: (v) {
                      context.read<QrAppViewModel>().switchTheme();
                    },
                    title: const Text("Theme"),
                  ),
                  SwitchListTile(
                    value: true,
                    onChanged: (v) {},
                    title: const Text("Language"),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
