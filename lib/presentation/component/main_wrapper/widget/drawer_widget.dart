import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/presentation/component/main_wrapper/bloc/drawer_bloc.dart';

class _NavigationItem {
  final NavItem item;
  final String title;
  final IconData icon;

  _NavigationItem(this.item, this.title, this.icon);
}

class NavDrawerWidget extends StatelessWidget {
  NavDrawerWidget({super.key});

  final List<_NavigationItem> _drawerItems = [
    _NavigationItem(NavItem.homeItem, "Home", Iconsax.home),
    _NavigationItem(
        NavItem.mitraBestariItem, "Kondisi Medis Penyerta", Iconsax.user),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: _drawerItems.length,
          itemBuilder: (context, index) {
            return BlocBuilder<DrawerBloc, DrawerState>(
              buildWhen: (previous, current) {
                return previous.selectedItem != current.selectedItem;
              },
              builder: (context, state) {
                return _buildListItem(_drawerItems[index], state, context);
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildListItem(
      _NavigationItem data, DrawerState state, BuildContext context) {
    return Card(
      color: Colors.grey[100],
      shape: const ContinuousRectangleBorder(borderRadius: BorderRadius.zero),
      borderOnForeground: true,
      elevation: 0,
      margin: EdgeInsets.zero,
      child: ListTile(
        title: Text(
          data.title,
          style: TextStyle(
              fontWeight: data.item == state.selectedItem
                  ? FontWeight.bold
                  : FontWeight.w300,
              color: data.item == state.selectedItem
                  ? AppColors.primary
                  : Colors.grey[600]),
        ),
        leading: Icon(
          data.icon,
          color: data.item == state.selectedItem
              ? AppColors.primary
              : Colors.grey[600],
        ),
        onTap: () => _handleItemClick(context, data.item),
      ),
    );
  }

  void _handleItemClick(BuildContext context, NavItem item) {
    context.read<DrawerBloc>().add(NavigateTo(item));
    Navigator.pop(context);
  }
}
