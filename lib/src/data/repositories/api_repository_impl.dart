import '../../domain/models/response/breaking_news_response.dart';
import '../../domain/models/request/breaking_news_request.dart';
import '../../domain/repositories/api_repository.dart';
import '../../utils/resources/data_state.dart';
import '../base/base_api_repository.dart';
import '../datasources/remote/news_api_services.dart';

class ApiRepositoryImpl extends BaseApiRepository implements ApiRepository{
final NewsApiService newsApiServices;
ApiRepositoryImpl(this.newsApiServices);

  @override
  Future<DataState<BreakingNewsResponse>> getBreakingNewsArticles({required BreakingNewsRequest request}) {
   return getStateOf(request: ()=>newsApiServices.getBreakingNewsArticles(
    apiKey: request.apiKey,
    country: request.country,
    category: request.category,
    page: request.page,
    pageSize: request.pageSize
   ),);
  }
}