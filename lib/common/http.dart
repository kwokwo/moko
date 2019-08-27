import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Http {
  BuildContext context;
  Options _options;
  Http([this.context]) {
    _options = Options(extra: {"context": context});
  }
  // static Dio dio = new Dio(BaseOptions{
  //   baseUrl:
  // })
}
