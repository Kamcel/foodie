import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:foodie/core/router/routes.dart';
import 'package:foodie/features/dish/data/models/dish.dart';
import 'package:foodie/features/dish/data/models/dish_list_state.dart';
import 'package:foodie/features/dish/presentation/providers/dish_notifier.dart';
import 'package:foodie/features/dish/presentation/widgets/dish_empty.dart';
import 'package:foodie/features/dish/presentation/widgets/dish_error.dart';
import 'package:foodie/features/dish/presentation/widgets/dish_loading.dart';
import 'package:foodie/features/dish/presentation/widgets/dish_success.dart';

class DishDetailScreen extends ConsumerStatefulWidget {
  final Dish dish;
  const DishDetailScreen({super.key, required this.dish});

  @override
  ConsumerState<DishDetailScreen> createState() => _DishDetailScreenState();
}

class _DishDetailScreenState extends ConsumerState<DishDetailScreen> {
  final _noteController = TextEditingController();
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(dishProvider.notifier).initializeDish(widget.dish);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(dishProvider);
    final notifier = ref.read(dishProvider.notifier);
    return Scaffold(
      body: SafeArea(
        child: state.map(
          loading: (_) => const DishLoading(),
          empty: (_) => const DishEmpty(),
          error: (e) => DishError(
            message: e.message,
            onRetry: () => ref.read(dishProvider.notifier).loadDishes(),
          ),
          success: (s) => DishSuccess(
            dish: s.dish,
            totalPrice: notifier.totalPrice,
            isOrderable: notifier.isOrderable,
            quantity: s.quantity,
            selectedSize: s.selectedSize,
            selectedToppings: s.selectedToppings,
            onSizeSelected: (size) => notifier.sizeSelection(size),
            onToppingToggled: (topping) => notifier.toppingSelection(topping),
            onIncrement: () => notifier.incrementQuantity(),
            onDecrement: () => notifier.decrementQuantity(),
            onAddToCart: () {
              notifier.addTocart();
              context.push(Routes.cart);
            },
            noteController: _noteController,
            onChanged: (text) => notifier.setNote(text),
          ),
        ),
      ),
    );
  }
}
