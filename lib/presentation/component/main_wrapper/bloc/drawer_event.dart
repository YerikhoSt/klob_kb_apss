part of 'drawer_bloc.dart';

sealed class DrawerEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class NavigateTo extends DrawerEvent {
  final NavItem destination;

  NavigateTo(this.destination);

  @override
  List<Object> get props => [destination];
}
