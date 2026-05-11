import 'package:flutter/material.dart';
import 'package:foodie/core/widgets/custom_app_bar.dart';
import 'package:foodie/features/restaurant/data/models/restaurant.dart';
import 'package:foodie/features/restaurant/data/models/review.dart';
import 'package:foodie/features/restaurant/presentation/widgets/app_chip.dart';
import 'package:foodie/features/restaurant/presentation/widgets/restaurant_review_box.dart';
import 'package:foodie/features/restaurant/presentation/widgets/restaurant_review_progress.dart';

class RestaurantReviewScreen extends StatefulWidget {
  final Restaurant restaurant;
  final List<Review> reviews;
  const RestaurantReviewScreen({
    super.key,
    required this.restaurant,
    required this.reviews,
  });

  @override
  State<RestaurantReviewScreen> createState() => _RestaurantReviewScreenState();
}

class _RestaurantReviewScreenState extends State<RestaurantReviewScreen> {
  final List<String> _filters = ['All', 'Most Recent', '5 Star'];
  String _selectedFilter = 'All';

  final List<Review> _mockReviews = [
    Review(
        id: '1',
        userId: 'u1',
        userName: 'Sarah M',
        rating: 5.0,
        comment: 'Best burgers ever!',
        createdAt: DateTime.now().subtract(Duration(days: 2))),
    Review(
        id: '2',
        userId: 'u2',
        userName: 'John D',
        rating: 4.0,
        comment: 'Great fries.',
        createdAt: DateTime.now().subtract(Duration(days: 5))),
    Review(
        id: '3',
        userId: 'u3',
        userName: 'Amina K',
        rating: 5.0,
        comment: 'Will come back!',
        createdAt: DateTime.now().subtract(Duration(hours: 12))),
  ];

  List<Review> get _allReviews =>
      widget.reviews.isEmpty ? _mockReviews : widget.reviews;

  List<Review> get _filteredReviews {
    final reviews = _allReviews;
    switch (_selectedFilter) {
      case '5 Star':
        return reviews.where((r) => r.rating.round() == 5).toList();
      case 'Most Recent':
        return List.from(reviews)
          ..sort((a, b) => b.createdAt.compareTo(a.createdAt));
      default:
        return reviews;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Review', showBack: true),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: RestaurantReviewProgress(
              restaurant: widget.restaurant,
              reviews: _allReviews,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: _filters.map((filter) {
                  final isSelected = _selectedFilter == filter;
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: AppChip(
                      label: filter,
                      isSelected: isSelected,
                      onSelected: (_) {
                        setState(() => _selectedFilter = filter);
                      },
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          SliverList.builder(
            itemCount: _filteredReviews.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: RestaurantReviewBox(reviews: _filteredReviews[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}
