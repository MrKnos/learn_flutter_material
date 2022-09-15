import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter_material/bloc/counter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) => _buildPage(
          context,
          number: state.number,
        ),
      ),
    );
  }

  Widget _buildPage(
    BuildContext context, {
    required int number,
  }) {
    final bloc = context.read<CounterBloc>();

    return Scaffold(
      body: SizedBox.expand(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () => bloc.add(
                IncreasingNumberRequestedEvent(currentNumber: number),
              ),
              icon: const Icon(Icons.add, size: 24),
            ),
            const SizedBox(width: 16),
            Text('Number: $number'),
            const SizedBox(width: 16),
            IconButton(
              onPressed: () => bloc.add(
                DecreasingNumberRequestedEvent(currentNumber: number),
              ),
              icon: const Icon(Icons.remove, size: 24),
            ),
          ],
        ),
      ),
    );
  }
}
