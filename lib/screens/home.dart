import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../components/comp_app.dart';
import '../cubit/counter_point_cubit.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterPointCubit, CounterPointIncrement>(
      builder: (context, state) => Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        appBar: AppBar(
          title: const Text(
            'Points Counter',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.52,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyComponentTeam(
                    teamName: 'Team A',
                    score:
                        '${BlocProvider.of<CounterPointCubit>(context).pointsTeamA}',
                    process_1: () {
                      BlocProvider.of<CounterPointCubit>(context)
                          .incrementTeamA(1);
                    },
                    process_2: () {
                      BlocProvider.of<CounterPointCubit>(context)
                          .incrementTeamA(2);
                    },
                    process_3: () {
                      BlocProvider.of<CounterPointCubit>(context)
                          .incrementTeamA(3);
                    },
                  ),
                  const VerticalDivider(
                    thickness: 2,
                    color: Colors.grey,
                  ),
                  MyComponentTeam(
                    teamName: 'Team B',
                    score:
                        '${BlocProvider.of<CounterPointCubit>(context).pointsTeamB}',
                    process_1: () {
                      BlocProvider.of<CounterPointCubit>(context)
                          .incrementTeamB(1);
                    },
                    process_2: () {
                      BlocProvider.of<CounterPointCubit>(context)
                          .incrementTeamB(2);
                    },
                    process_3: () {
                      BlocProvider.of<CounterPointCubit>(context)
                          .incrementTeamB(3);
                    },
                  ),
                ],
              ),
            ),
            myElevatedbutton(
              process: () {
                BlocProvider.of<CounterPointCubit>(context).resetPoints();
              },
              color: Colors.amber.shade800,
              text: 'Reset',
            ),
          ],
        ),
      ),
    );
  }
}
