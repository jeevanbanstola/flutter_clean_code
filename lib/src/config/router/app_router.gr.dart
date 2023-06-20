// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    Breakingnewsrouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BreakingNewsView(),
      );
    }
  };
}

/// generated route for
/// [BreakingNewsView]
class Breakingnewsrouter extends PageRouteInfo<void> {
  const Breakingnewsrouter({List<PageRouteInfo>? children})
      : super(
          Breakingnewsrouter.name,
          initialChildren: children,
        );

  static const String name = 'Breakingnewsrouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}
