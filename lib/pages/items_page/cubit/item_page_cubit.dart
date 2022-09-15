import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter_material/mock.dart';
import 'package:learn_flutter_material/models/item.dart';

part 'item_page_state.dart';

class ItemPageCubit extends Cubit<ItemPageState> {
  ItemPageCubit() : super(ItemPageState(items: Mock().items));

  void toggleFavoriteItem({required String itemId}) {
    final updatedItems = state.items
        .map(
          (item) => item.id == itemId
              ? item.copyWith(isFavorite: !item.isFavorite)
              : item,
        )
        .toList();

    emit(ItemPageState(items: updatedItems));
  }
}
