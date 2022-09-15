import 'package:flutter/material.dart';
import 'package:learn_flutter_material/pages/counter_page/counter_page.dart';
import 'package:learn_flutter_material/pages/items_page/items_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildNavigatorButton(
                context,
                title: 'Go to Counter page',
                page: const CounterPage(),
              ),
              const SizedBox(height: 16),
              _buildNavigatorButton(
                context,
                title: 'Go to Items page',
                page: const ItemsPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavigatorButton(
    BuildContext context, {
    required String title,
    required Widget page,
  }) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },
      child: Text(title),
    );
  }
}
