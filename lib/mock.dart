import 'dart:ui';
import 'dart:math' as math;
import 'package:learn_flutter_material/models/item.dart';

class Mock {
  final items = _createItems();

  static List<Item> _createItems({int itemCount = 100}) {
    return List.generate(
      itemCount,
      (index) => Item(
        id: index.toString(),
        color: _randomColor(),
        name: 'Item $index',
      ),
    );
  }

  static Color _randomColor() {
    final randomNumber = math.Random().nextDouble();
    return Color((randomNumber * 0xFFFFFF).toInt()).withOpacity(1.0);
  }
}
