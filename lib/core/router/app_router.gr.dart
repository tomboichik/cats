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
    FactRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FactPage(),
      );
    },
    FactsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FactsPage(),
      );
    },
  };
}

/// generated route for
/// [FactPage]
class FactRoute extends PageRouteInfo<void> {
  const FactRoute({List<PageRouteInfo>? children})
      : super(
          FactRoute.name,
          initialChildren: children,
        );

  static const String name = 'FactRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FactsPage]
class FactsRoute extends PageRouteInfo<void> {
  const FactsRoute({List<PageRouteInfo>? children})
      : super(
          FactsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FactsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
