import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:qr_app/app/pages/qr_app/qr_app.dart';
import 'package:qr_app/core/di/locator.dart';

void main() async {
  await setupDI(Environment.prod);
  runApp(const QrApp());
}
