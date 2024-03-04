import 'package:toktik/domain/entities/video_post.dart';

abstract class VideoPostDataRepository {
  Future<List<VideoPost>> getTrendingVideoByPage(int page);
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId);
}
