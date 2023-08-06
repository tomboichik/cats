import 'package:auto_route/auto_route.dart';
import 'package:cat_test/presentation/fact/pages/fact_page.dart';
import 'package:cat_test/presentation/facts/pages/facts_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: FactRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: FactsRoute.page,
        )
      ];
}
