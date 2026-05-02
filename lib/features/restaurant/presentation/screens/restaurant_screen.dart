import 'package:flutter/material.dart';
import 'package:foodie/features/restaurant/data/models/restaurant.dart';
import 'package:foodie/features/restaurant/data/models/restaurant_address.dart';
import 'package:foodie/features/restaurant/data/restaurant_enum.dart';
import 'package:foodie/features/restaurant/presentation/widgets/restaurant_card.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({super.key});

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  bool _isBigFavorited = true;
  bool _isMediumFavorited = false;

  late final Restaurant mockRestaurant = Restaurant(
    id: 'mock_1',
    name: 'Cline\'s Test Kitchen',
    slug: 'clines-test-kitchen',
    description: 'A place where code becomes cuisine.',
    imageUrl:
        'https://images.unsplash.com/photo-1495521821757-a1efb6729352?w=600&h=400&fit=crop',
    cuisines: const [CuisineType.american, CuisineType.mediterranean],
    priceRange: PriceRange.expensive,
    tier: RestaurantTier.popular,
    status: RestaurantStatus.active,
    address: const RestaurantAddress(
      street: '789 Code Lane',
      city: 'Silicon Valley',
      state: 'CA',
      zipCode: '90210',
      country: 'USA',
      unit: null,
    ),
    isOpenNow: true,
    deliveryFee: 1.99,
    deliveryTimeMin: 25.0,
    deliveryTimeMax: 40.0,
    offersDelivery: true,
    offersPickup: true,
    phoneNumber: '555-123-4567',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    rating: 4.8,
    reviewCount: 999,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Restaurant Card Demo')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Big Restaurant Card',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              RestaurantCard(
                restaurant: mockRestaurant,
                variant: RestaurantCardVariant.big,
                isFavorited: _isBigFavorited,
                onTap: () => print('Big Card Tapped!'),
                onFavoriteTap: () {
                  setState(() {
                    _isBigFavorited = !_isBigFavorited;
                  });
                },
              ),
              const SizedBox(height: 32),
              const Text(
                'Medium Restaurant Card',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              RestaurantCard(
                restaurant: mockRestaurant,
                variant: RestaurantCardVariant.medium,
                isFavorited: _isMediumFavorited,
                onTap: () => print('Medium Card Tapped!'),
                onFavoriteTap: () {
                  setState(() {
                    _isMediumFavorited = !_isMediumFavorited;
                  });
                },
              ),
              const SizedBox(height: 32),
              const Text(
                'Small Restaurant Card',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              RestaurantCard(
                restaurant: mockRestaurant,
                variant: RestaurantCardVariant.small,
                isFavorited: true,
                onTap: () => print('Small Card Tapped!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
