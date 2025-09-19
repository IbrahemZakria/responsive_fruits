import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_fruits/features/home.dart/presentation/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  void changeTab(int index) {
    emit(ChangeIndex(selectedIndex: index));
  }

  void rebuild() {
    emit(ChangeIndex(selectedIndex: 0));
  }
}
