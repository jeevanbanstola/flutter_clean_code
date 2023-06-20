import 'package:auto_route/auto_route.dart';

import '../../presentation/views/breaking_news_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()      
class AppRouter extends _$AppRouter{      
   
@override
  RouteType get defaultRouteType => const RouteType.adaptive(); //.cupertino, .adaptive ..etc    
   
 @override      
  List<AutoRoute> get routes => [     
    AutoRoute(page: Breakingnewsrouter.page,initial: true),
  /// routes go here     
  ]    ;
}
final appRouter = AppRouter();