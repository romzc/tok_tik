import 'package:toktik/domain/datasources/video_posts_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_posts.dart';

class LocalVideoDataSourceImpl implements VideoPostDataSource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideoByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((e) => LocalVideoModel.fromJsonToMap(e).toVideoPostEntity())
        .toList();

    return newVideos;
  }
}
