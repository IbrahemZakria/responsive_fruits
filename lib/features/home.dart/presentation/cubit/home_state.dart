import 'package:flutter/material.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class Rebuild extends HomeState {}

class ChangeIndex extends HomeState {
  final int selectedIndex;
  ChangeIndex({required this.selectedIndex});
}
