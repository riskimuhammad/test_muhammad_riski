import 'dart:io';

import 'package:flutter/material.dart';
import 'package:test_muhammad_riski/app.dart';
import 'core/utils/http_overrides.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(JakOnePay());
}
