import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter_material/models/item.dart';
import 'package:learn_flutter_material/pages/items_page/cubit/item_page_cubit.dart';
import 'package:learn_flutter_material/widgets/item_widget.dart';

class ItemsPage extends StatefulWidget {
  const ItemsPage({Key? key}) : super(key: key);

  @override
  State<ItemsPage> createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ItemPageCubit>(
      create: (context) => ItemPageCubit(),
      child: BlocBuilder<ItemPageCubit, ItemPageState>(
        builder: (context, state) => _buildPage(
          context,
          items: state.items,
        ),
      ),
    );
  }

  Widget _buildPage(
    BuildContext context, {
    required List<Item> items,
  }) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testing Sample'),
      ),
      body: SafeArea(
        child: _buildItems(context, items: items),
      ),
    );
  }

  Widget _buildItems(
    BuildContext context, {
    required List<Item> items,
  }) {
    final cubit = context.read<ItemPageCubit>();

    return ListView(
      children: items
          .map(
            (item) => ItemWidget(
              item: item,
              onPressedFavoriteButton: () => cubit.toggleFavoriteItem(
                itemId: item.id,
              ),
            ),
          )
          .toList(),
    );
  }
}
