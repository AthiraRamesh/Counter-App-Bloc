import 'package:counter_app/logic/counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text("Counter App"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  state.counterValue.toString(),
                  style: const TextStyle(fontSize: 50),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // execute bloc event
              context.read<CounterBloc>().add(IncrementEvent());
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(DecrementEvent());
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
      // floatingActionButton: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     FloatingActionButton(
      //       onPressed: () {
      //         // execute bloc event
      //         context.read<CounterBloc>().add(IncrementEvent());
      //       },
      //       child: const Icon(Icons.add),
      //     ),
      //     FloatingActionButton(
      //       onPressed: () {
      //         context.read<CounterBloc>().add(DecrementEvent());
      //       },
      //       child: const Icon(Icons.remove),
      //     ),
      //   ],
      // ),
    );
  }
}
