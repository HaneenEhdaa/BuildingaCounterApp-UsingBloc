import 'package:different_blocs/Blocs/counter_bloc/bloc/counter_bloc.dart';
import 'package:different_blocs/views/builder_view.dart';
import 'package:different_blocs/views/listener_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenerWidget(
      mychild: Scaffold(
        appBar: AppBar(
          title: const Text("Counter App"),
        ),
        body: Center(
          child: const BuilderWidget(),
        ),
      ),
    );
  }
}
