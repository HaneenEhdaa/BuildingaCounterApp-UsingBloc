import 'package:different_blocs/Blocs/counter_bloc/bloc/counter_bloc.dart';
import 'package:different_blocs/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListenerWidget extends StatelessWidget {
  final Widget mychild;

  const ListenerWidget({super.key, required this.mychild});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CounterBloc, CounterState>(
      listener: (context, state) {
        if (state.num == 3) {
          SnackBar snakbar = SnackBar(
            content: Text("the counter = 3"),
            duration: Duration(seconds: 2),
            backgroundColor: const Color.fromARGB(255, 32, 194, 0),
          );
          ScaffoldMessenger.of(context).showSnackBar(snakbar);
        }
      },
      child: mychild,
    );
  }
}
