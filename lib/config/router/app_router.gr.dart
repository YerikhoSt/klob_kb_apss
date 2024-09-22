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
    EfektivitasMetodeKontrasepsiRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EfektivitasMetodeKontrasepsiPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    KetentuanKondisiMedisRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const KetentuanKondisiMedisPage(),
      );
    },
    KondisiMedisRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const KondisiMedisPage(),
      );
    },
    KondisiMedisPenyertaDetailRoute.name: (routeData) {
      final args = routeData.argsAs<KondisiMedisPenyertaDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: KondisiMedisPenyertaDetailPage(
          mergedData: args.mergedData,
          selectedData: args.selectedData,
          key: args.key,
        ),
      );
    },
    KondisiMedisPenyertaRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const KondisiMedisPenyertaPage(),
      );
    },
    MetodeKontrasepsiRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MetodeKontrasepsiPage(),
      );
    },
    PenapisanKehamilanRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PenapisanKehamilanPage(),
      );
    },
    ProsedurSebelumPenggunaanRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProsedurSebelumPenggunaanPage(),
      );
    },
  };
}

/// generated route for
/// [EfektivitasMetodeKontrasepsiPage]
class EfektivitasMetodeKontrasepsiRoute extends PageRouteInfo<void> {
  const EfektivitasMetodeKontrasepsiRoute({List<PageRouteInfo>? children})
      : super(
          EfektivitasMetodeKontrasepsiRoute.name,
          initialChildren: children,
        );

  static const String name = 'EfektivitasMetodeKontrasepsiRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
/// [KetentuanKondisiMedisPage]
class KetentuanKondisiMedisRoute extends PageRouteInfo<void> {
  const KetentuanKondisiMedisRoute({List<PageRouteInfo>? children})
      : super(
          KetentuanKondisiMedisRoute.name,
          initialChildren: children,
        );

  static const String name = 'KetentuanKondisiMedisRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [KondisiMedisPage]
class KondisiMedisRoute extends PageRouteInfo<void> {
  const KondisiMedisRoute({List<PageRouteInfo>? children})
      : super(
          KondisiMedisRoute.name,
          initialChildren: children,
        );

  static const String name = 'KondisiMedisRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [KondisiMedisPenyertaDetailPage]
class KondisiMedisPenyertaDetailRoute
    extends PageRouteInfo<KondisiMedisPenyertaDetailRouteArgs> {
  KondisiMedisPenyertaDetailRoute({
    required Map<String, String> mergedData,
    required List<Map<String, String>> selectedData,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          KondisiMedisPenyertaDetailRoute.name,
          args: KondisiMedisPenyertaDetailRouteArgs(
            mergedData: mergedData,
            selectedData: selectedData,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'KondisiMedisPenyertaDetailRoute';

  static const PageInfo<KondisiMedisPenyertaDetailRouteArgs> page =
      PageInfo<KondisiMedisPenyertaDetailRouteArgs>(name);
}

class KondisiMedisPenyertaDetailRouteArgs {
  const KondisiMedisPenyertaDetailRouteArgs({
    required this.mergedData,
    required this.selectedData,
    this.key,
  });

  final Map<String, String> mergedData;

  final List<Map<String, String>> selectedData;

  final Key? key;

  @override
  String toString() {
    return 'KondisiMedisPenyertaDetailRouteArgs{mergedData: $mergedData, selectedData: $selectedData, key: $key}';
  }
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
/// [MetodeKontrasepsiPage]
class MetodeKontrasepsiRoute extends PageRouteInfo<void> {
  const MetodeKontrasepsiRoute({List<PageRouteInfo>? children})
      : super(
          MetodeKontrasepsiRoute.name,
          initialChildren: children,
        );

  static const String name = 'MetodeKontrasepsiRoute';

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

/// generated route for
/// [ProsedurSebelumPenggunaanPage]
class ProsedurSebelumPenggunaanRoute extends PageRouteInfo<void> {
  const ProsedurSebelumPenggunaanRoute({List<PageRouteInfo>? children})
      : super(
          ProsedurSebelumPenggunaanRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProsedurSebelumPenggunaanRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
