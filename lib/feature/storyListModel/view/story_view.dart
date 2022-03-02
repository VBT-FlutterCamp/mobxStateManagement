import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_state_management/core/base_view.dart';

import '../viewModel/story_view_model.dart';

class StoryView extends StatelessWidget {
  const StoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<StoryViewModel>(
      viewModel: StoryViewModel(),
      onModelReady: (model) {
        model.init();
        model.setContext(context);
      },
      onPageBuilder: (BuildContext context, StoryViewModel viewModel) => Scaffold(body: Observer(builder: (_) {
        return viewModel.isLoading
            ? ListView.builder(
                itemCount: viewModel.storyModel?.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Text(viewModel.storyModel?[index].title ?? ''),
                  );
                },
              )
            : Center(
                child: CircularProgressIndicator(),
              );
      })),
    );
  }
}
