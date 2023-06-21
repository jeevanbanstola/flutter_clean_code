import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../domain/models/response/breaking_news_response.dart';
import '../../../utils/constants/strings.dart';
part 'news_api_services.g.dart';
@RestApi(baseUrl:baseUrl,parser:Parser.MapSerializable)
abstract class NewsApiService{
  factory NewsApiService(Dio dio,{String baseUrl})= _NewsApiService;

  @GET('/top-headlines')
  Future<HttpResponse<BreakingNewsResponse>> getBreakingNewsArticles({
    @Query('apiKey') String? apiKey,
    @Query('country') String? country,
    @Query('category') String? category,
    @Query('page') int? page,
    @Query('pageSize') int? pageSize,

  });
  
}