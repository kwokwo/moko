import 'package:flutter/material.dart';
import 'package:youlanka_flutter/main.dart';

class Env {
  String get name => runtimeType.toString();
  String baseUrl;
  Color primarySwatch;
  Env() {
    runApp(MyApp());
  }
}
