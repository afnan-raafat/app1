import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
///dashbord config
PageController pageController = PageController();
int currentindex=0;
  void onChangeTab(int index){
     currentindex= index;
     pageController.jumpToPage(index);
     emit(DashboardInitial());
  }

  DashboardCubit() : super(DashboardInitial());
}
