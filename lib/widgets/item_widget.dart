import 'package:flutter/material.dart';
import 'package:learn_flutter_material/models/item.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    required this.item,
    required this.onPressedFavoriteButton,
    Key? key,
  }) : super(key: key);

  final Item item;
  final void Function() onPressedFavoriteButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Icon(
            Icons.circle,
            color: item.color,
            size: 60,
          ),
          const SizedBox(width: 16),
          Expanded(child: Text(item.name)),
          IconButton(
            icon: _buildFavoriteIcon(
              context,
              isFavorite: item.isFavorite,
            ),
            onPressed: onPressedFavoriteButton,
          ),
          const SizedBox(width: 16),
        ],
      ),
    );
  }

  Widget _buildFavoriteIcon(
    BuildContext context, {
    required bool isFavorite,
  }) {
    return isFavorite
        ? const Icon(Icons.favorite, size: 28, color: Colors.pinkAccent)
        : const Icon(Icons.favorite_border, size: 28, color: Colors.grey);
  }
}
