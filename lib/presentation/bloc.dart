
import 'package:Test_Web/domain/repositories/repository.dart';
import 'package:Test_Web/presentation/event.dart';
import 'package:Test_Web/presentation/state.dart';
import 'package:bloc/bloc.dart';

class StartScreenBloc extends Bloc<StartScreenEvent, StartScreenState> {
  StartScreenBloc() : super(EmployeeInitialState()) {
    on<StartScreenEvent>((event, emit) async {
      emit(EmployeeLoadingState());
      try {
        if (event is FetchEmployeeEvent) {
          var employeeScreen = await Repository().getEmployees();
          emit(EmployeeLoadedState(employeeScreen: employeeScreen));
        }
      } catch (e) {
        emit(EmployeeErrorState(message: e.toString()));
      }
    });
  }
}
