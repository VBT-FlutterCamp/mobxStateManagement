import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../core/base_view.dart';
import '../viewModel/user_view_model.dart';

class UserView extends StatelessWidget {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<UserViewModel>(
      viewModel: UserViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, UserViewModel viewModel) {
        return Scaffold(body: Observer(builder: ((_) {
          return viewModel.isLoading
              ? ListView.builder(
                  itemCount: viewModel.userModel?.data?.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                        elevation: 5,
                        child: ListTile(
                          leading: Image.network(viewModel.userModel?.data?[index].avatar ?? ''),
                          title: Text(
                              '${viewModel.userModel?.data?[index].firstName ?? ''}${viewModel.userModel?.data?[index].lastName}'),
                          subtitle: Text(viewModel.userModel?.data?[index].email ?? ''),
                          trailing: const Icon(Icons.access_alarm_rounded),
                        ));
                  },
                )
              : const Center(
                  child: CircularProgressIndicator(),
                );
        })));
      },
    );
  }
}
