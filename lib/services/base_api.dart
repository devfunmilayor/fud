import 'package:dio/dio.dart';

abstract class BaseAPi {
  String apiUrl =
      'https://storage.googleapis.com/ember-deploy.appspot.com/images/open-source.json';
  static CancelToken cancelToken = CancelToken();
}
