import 'package:flutter/material.dart';
import 'package:learn_flutter_material/mock.dart';
import 'package:learn_flutter_material/widgets/item_widget.dart';

class ItemsPage extends StatefulWidget {
  const ItemsPage({Key? key}) : super(key: key);

  @override
  State<ItemsPage> createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  final _items = Mock().items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testing Sample'),
      ),
      body: SafeArea(
        child: ListView(
          children: _items
              .map(
                (item) => ItemWidget(
                  item: item,
                  onPressedFavoriteButton: () => _toggleFavoriteButton(
                    itemId: item.id,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  void _toggleFavoriteButton({required String itemId}) {
    final targetItem = _items.firstWhere((item) => item.id == itemId);
    targetItem.isFavorite = !targetItem.isFavorite;
    setState(() {});
  }
}
