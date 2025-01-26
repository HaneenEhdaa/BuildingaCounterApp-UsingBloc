import 'package:different_blocs/Blocs/counter_bloc/bloc/counter_bloc.dart';
import 'package:different_blocs/Blocs/theme_bloc/bloc/theme_bloc.dart';
import 'package:different_blocs/core/colors/colors.dart';
import 'package:different_blocs/views/consumer_view.dart';
import 'package:different_blocs/views/merge_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return GestureDetector(
                onTap: () {
                  context.read<ThemeBloc>().add(ToggleTheme());
                },
                child: Icon(
                  state is ThemeLight ? Icons.dark_mode : Icons.sunny,
                  color: isDarkMode ? kDarkTexe : kDarkBody,
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BlocProvider(
                              create: (context) => CounterBloc(),
                              child: const CounterPage())));
                },
                child: Text(
                  "Listner & Builder",
                  style: TextStyle(
                      color: isDarkMode ? kDarkBody : kMainColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
            SizedBox(height: 50),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BlocProvider(
                              create: (context) => CounterBloc(),
                              child: const ConsumerView())));
                },
                child: Text(
                  "Consumer",
                  style: TextStyle(
                      color: isDarkMode ? kDarkBody : kMainColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}
