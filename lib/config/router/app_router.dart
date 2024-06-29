import 'package:auto_route/auto_route.dart';
import 'package:klob_kb_apps/presentation/main_wrapper/main_wrapper_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MainWrapperRoute.page, path: '/', initial: true),
      ];
}
