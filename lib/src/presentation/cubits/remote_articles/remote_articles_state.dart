import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/models/article.dart';
abstract class RemoteArticlesState extends Equatable {
  final List<Article> articles;
  final bool noMoreData;
  final DioException? error;
  const RemoteArticlesState({
     this.articles = const [],
     this.noMoreData = true,
    this.error,
  });


  @override
  List<Object> get props => [articles, noMoreData,];

}
class RemoteArticlesLoading extends RemoteArticlesState{
  const RemoteArticlesLoading();
}
class RemoteArticlesSuccess extends RemoteArticlesState{
  const RemoteArticlesSuccess({super.articles,super.noMoreData});
}
class RemoteArticlesFailed extends RemoteArticlesState{
  const RemoteArticlesFailed({super.error});
}
