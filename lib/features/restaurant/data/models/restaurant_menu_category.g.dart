// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_menu_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RestaurantMenuCategory _$RestaurantMenuCategoryFromJson(
        Map<String, dynamic> json) =>
    _RestaurantMenuCategory(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
      items: (json['items'] as List<dynamic>?)
              ?.map(
                  (e) => RestaurantMenuItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$RestaurantMenuCategoryToJson(
        _RestaurantMenuCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'sortOrder': instance.sortOrder,
      'items': instance.items,
    };
