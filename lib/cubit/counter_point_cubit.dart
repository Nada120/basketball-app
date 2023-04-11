import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'counter_point_state.dart';

class CounterPointCubit extends Cubit<CounterPointIncrement> {
  CounterPointCubit() : super(CounterPointIncrement());

  int pointsTeamA = 0;
  int pointsTeamB = 0;

  void incrementTeamA(int points) {
    pointsTeamA += points; 
    emit(CounterPointIncrement());
  }

  void incrementTeamB(int points) {
    pointsTeamB += points;
    emit(CounterPointIncrement());
  }

  void resetPoints() {
    pointsTeamA = 0;
    pointsTeamB = 0;
    emit(CounterPointIncrement());
  }
}
