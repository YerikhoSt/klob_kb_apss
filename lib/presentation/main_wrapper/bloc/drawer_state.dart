part of 'drawer_bloc.dart';

enum NavItem {
  homeItem, 
  mitraBestariItem,
}

 class DrawerState extends Equatable {
  final NavItem selectedItem;

  const DrawerState({required this.selectedItem});

  @override
  List<Object> get props => [selectedItem];
}

