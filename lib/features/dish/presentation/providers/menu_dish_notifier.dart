import 'package:foodie/features/dish/data/mock_dishes.dart';
import 'package:foodie/features/dish/data/models/dish.dart';
import 'package:foodie/features/dish/data/models/dish_enums.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'menu_dish_notifier.g.dart';

@riverpod
class MenuDishNotifier extends _$MenuDishNotifier {
  final List<Dish> _allDishes = mockDishes;
  DishCategory? _selcetedCategory;

  @override
  List<Dish> build() => _allDishes;
  void filterByCategory(DishCategory? category) {
    _selcetedCategory = category;
    if (category == null) {
      state = [..._allDishes];
    } else {
      state = _allDishes.where((d) => d.categories.contains(category)).toList();
    }
  }
}
