import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:klob_kb_apps/presentation/component/main_wrapper/bloc/drawer_bloc.dart';
import 'package:klob_kb_apps/presentation/component/main_wrapper/widget/drawer_widget.dart';
import 'package:klob_kb_apps/presentation/pages/home/home_page.dart';
import 'package:klob_kb_apps/presentation/pages/kondisi_medis_penyerta/kondisi_medis_penyerta_page.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';
import 'package:klob_kb_apps/util/extensions/text_style_extensions.dart';

@RoutePage()
class MainWrapperPage extends StatefulWidget implements AutoRouteWrapper {
  const MainWrapperPage({super.key});

  @override
  State<MainWrapperPage> createState() => _MainWrapperPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _MainWrapperPageState extends State<MainWrapperPage> {
  late DrawerBloc _bloc;
  late Widget _mainContent;

  @override
  void initState() {
    _bloc = DrawerBloc();
    _mainContent = _getContentForState(_bloc.state.selectedItem);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: BlocConsumer<DrawerBloc, DrawerState>(
        listener: (context, state) {
          _mainContent = _getContentForState(state.selectedItem);
        },
        buildWhen: (previous, current) =>
            previous.selectedItem != current.selectedItem,
        listenWhen: (previous, current) =>
            previous.selectedItem != current.selectedItem,
        builder: (context, state) {
          return Scaffold(
            appBar: _buildAppBar(_bloc.state, context),
            drawer: NavDrawerWidget(),
            body: AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              switchInCurve: Curves.easeInExpo,
              switchOutCurve: Curves.easeOutExpo,
              child: _mainContent,
            ),
          );
        },
      ),
    );
  }

  AppBar _buildAppBar(DrawerState state, BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: Text(
        _getAppBarTitle(state.selectedItem),
        style: context.titleMedium
            ?.toColor(Colors.black)
            .toWeight(FontWeight.bold)
            .toSize(20),
      ),
    );
  }

  String _getAppBarTitle(NavItem selectedItem) {
    switch (selectedItem) {
      case NavItem.homeItem:
        return "Home";
      case NavItem.mitraBestariItem:
        return "Kondisi Medis Peneyerta";
    }
  }

  Widget _getContentForState(NavItem selectedItem) {
    switch (selectedItem) {
      case NavItem.homeItem:
        return const HomePage();
      case NavItem.mitraBestariItem:
        return const KondisiMedisPenyertaPage();
    }
  }
}
