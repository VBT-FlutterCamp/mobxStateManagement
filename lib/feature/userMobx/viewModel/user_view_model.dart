import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../core/base_view_model.dart';
import '../model/user_model.dart';
import '../service/user_service.dart';

part 'user_view_model.g.dart';

class UserViewModel = _UserViewModelBase with _$UserViewModel;

abstract class _UserViewModelBase with Store, BaseViewModel {
  late IUserService userService;

  @observable
  UserModel? userModel;
  @observable
  bool isLoading = true;

  @action
  void changeLoading() {
    isLoading = !isLoading;
  }

  @action
  Future<void> userFetch() async {
    changeLoading();

    userModel = await userService.userList();
    changeLoading();
  }

  @override
  void setContext(BuildContext context) => this.context = context;
  @override
  void init() {
    userService = UserService(networkManager);
    userFetch();
  }
}
