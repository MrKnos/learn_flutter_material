import 'package:flutter/material.dart';
import 'package:learn_flutter_material/pages/items_page/items_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ItemsPage(),
    );
  }
}
