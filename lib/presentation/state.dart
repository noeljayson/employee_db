import 'package:Test_Web/data/models/employee_list.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class StartScreenState extends Equatable {
  @override
  List<Object> get props => [];
}

class EmployeeInitialState extends StartScreenState {
  @override
  List<Object> get props => [];
}

class EmployeeLoadingState extends StartScreenState {
  @override
  List<Object> get props => [];
}

class EmployeeLoadedState extends StartScreenState {
  final List<Employee> employeeScreen;

  EmployeeLoadedState({required this.employeeScreen});

  @override
  List<Object> get props => [];
}

class EmployeeErrorState extends StartScreenState {
  String message;

  EmployeeErrorState({required this.message});

  @override
  List<Object> get props => [message];
}
