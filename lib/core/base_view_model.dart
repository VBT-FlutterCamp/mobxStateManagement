import 'package:flutter/material.dart';
import 'package:vexana/vexana.dart';

abstract class BaseViewModel {
  late BuildContext context;
  INetworkManager get networkManager =>
      NetworkManager(options: BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));
  void setContext(BuildContext context);
  void init();
}
