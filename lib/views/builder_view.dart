import 'package:different_blocs/Blocs/counter_bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuilderWidget extends StatelessWidget {
  const BuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Counter',
          style: TextStyle(
            color: Color.fromARGB(255, 28, 172, 146),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Text(
              '${state.num}',
              style: Theme.of(context).textTheme.headlineMedium,
            );
          },
        ),
      ],
    );
  }
}
