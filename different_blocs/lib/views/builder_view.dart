import 'package:different_blocs/Blocs/counter_bloc/bloc/counter_bloc.dart';
import 'package:different_blocs/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuilderWidget extends StatelessWidget {
  const BuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
      return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter',
              style: TextStyle(
                color: isDarkMode ? kWhite : kMainColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${state.num}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(CountIncrement());
                    },
                    child: Icon(
                      Icons.add,
                      color: isDarkMode ? kDarkBody : kMainColor,
                    ),
                  ),
                  const SizedBox(width: 100),
                  ElevatedButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(CountDecrement());
                    },
                    child: Icon(
                      Icons.minimize,
                      color: isDarkMode ? kDarkBody : kMainColor,
                    ),
                  ),
                ],
              ),
            )
          ]);
    });
  }
}
