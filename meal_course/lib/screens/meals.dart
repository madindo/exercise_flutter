import 'package:flutter/material.dart';
import 'package:meal_course/models/meal.dart';
import 'package:meal_course/screens/meals_details.dart';
import 'package:meal_course/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    this.title,
    required this.meals,
  });

  final String? title;
  final List<Meal> meals;

  void selectMeal(BuildContext context, meal) {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => MealDetailScreen(meal: meal,)));
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Uh oh ... nothing here!',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground)
                  ),
            const SizedBox(height: 16),
            Text('Try selecting a different category!',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground
            )
            )
          ],
        ),
      );

    if (meals.isNotEmpty){
      content = ListView.builder(
          itemCount: meals.length,
          itemBuilder: (ctx, index) => MealItem(
            meal: meals[index],
            onSelectMeal: (ctx, meal) {
              selectMeal(ctx, meal);
            },));
    }

    if (title == null) {
      return content;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: content
    );
  }
}