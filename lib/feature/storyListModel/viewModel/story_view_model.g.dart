// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StoryViewModel on _StoryViewModelBase, Store {
  final _$storyModelAtom = Atom(name: '_StoryViewModelBase.storyModel');

  @override
  List<StoryModel>? get storyModel {
    _$storyModelAtom.reportRead();
    return super.storyModel;
  }

  @override
  set storyModel(List<StoryModel>? value) {
    _$storyModelAtom.reportWrite(value, super.storyModel, () {
      super.storyModel = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_StoryViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$fetchStoryAsyncAction = AsyncAction('_StoryViewModelBase.fetchStory');

  @override
  Future<void> fetchStory() {
    return _$fetchStoryAsyncAction.run(() => super.fetchStory());
  }

  @override
  String toString() {
    return '''
storyModel: ${storyModel},
isLoading: ${isLoading}
    ''';
  }
}
