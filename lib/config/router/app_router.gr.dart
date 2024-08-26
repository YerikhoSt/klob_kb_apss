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
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    KondisiMedisPenyertaRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const KondisiMedisPenyertaPage(),
      );
    },
    MainWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const MainWrapperPage()),
      );
    },
    PenapisanKehamilanRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PenapisanKehamilanPage(),
      );
    },
  };
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [KondisiMedisPenyertaPage]
class KondisiMedisPenyertaRoute extends PageRouteInfo<void> {
  const KondisiMedisPenyertaRoute({List<PageRouteInfo>? children})
      : super(
          KondisiMedisPenyertaRoute.name,
          initialChildren: children,
        );

  static const String name = 'KondisiMedisPenyertaRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainWrapperPage]
class MainWrapperRoute extends PageRouteInfo<void> {
  const MainWrapperRoute({List<PageRouteInfo>? children})
      : super(
          MainWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PenapisanKehamilanPage]
class PenapisanKehamilanRoute extends PageRouteInfo<void> {
  const PenapisanKehamilanRoute({List<PageRouteInfo>? children})
      : super(
          PenapisanKehamilanRoute.name,
          initialChildren: children,
        );

  static const String name = 'PenapisanKehamilanRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
