import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/repositories/video_posts_respository_impl.dart';

class DiscoverProvider extends ChangeNotifier {
  // TODO: Repository, DataSource

  final VideoPostsRepositoryImpl videoPostRepository;

  List<VideoPost> videos = [];
  bool initialLoading = true;

  DiscoverProvider({required this.videoPostRepository});

  Future<void> loadNextPage() async {
    //await Future.delayed(const Duration(seconds: 2));
    //final List<VideoPost> newVideos = videoPosts
    //    .map((e) => LocalVideoModel.fromJsonToMap(e).toVideoPostEntity())
    //    .toList();

    final newVideos = await videoPostRepository.getTrendingVideoByPage(1);
    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
