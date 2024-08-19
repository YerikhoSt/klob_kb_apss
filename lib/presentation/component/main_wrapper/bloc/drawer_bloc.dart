import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'drawer_event.dart';
part 'drawer_state.dart';

class DrawerBloc extends Bloc<DrawerEvent, DrawerState> {
  DrawerBloc() : super(const DrawerState(selectedItem: NavItem.homeItem)) {
    on<NavigateTo>((event, emit) {
      if (event.destination != state.selectedItem) {
        emit(DrawerState(selectedItem: event.destination));
      }
    });
  }
}
