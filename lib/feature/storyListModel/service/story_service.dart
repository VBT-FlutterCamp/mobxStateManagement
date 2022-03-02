import 'package:vexana/vexana.dart';

import '../model/story_model.dart';

abstract class IStoryService {
  final INetworkManager networkManager;

  IStoryService(this.networkManager);

  Future<List<StoryModel>?> storyFetch();
}

class StoryService extends IStoryService {
  StoryService(INetworkManager networkManager) : super(networkManager);

  @override
  Future<List<StoryModel>?> storyFetch() async {
    final response = await networkManager.send<StoryModel, List<StoryModel>>('posts?userId=1',
        parseModel: StoryModel(), method: RequestType.GET);
    return response.data;
  }
}
