import 'package:vexana/vexana.dart';

import '../model/user_model.dart';

abstract class IUserService {
  final INetworkManager networkManager;

  IUserService(this.networkManager);
  Future<UserModel?> userList();
}

class UserService extends IUserService {
  UserService(INetworkManager networkManager) : super(networkManager);

  @override
  Future<UserModel?> userList() async {
    final response = await networkManager.send<UserModel, UserModel>('api/users?page=2',
        parseModel: UserModel(), method: RequestType.GET);

    return response.data;
  }
}
