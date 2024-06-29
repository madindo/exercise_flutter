import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meal_course/providers/filters_provider.dart';
// import 'package:meal_course/screens/tabs.dart';
// import 'package:meal_course/widgets/main_drawer.dart';

class FiltersScreens extends ConsumerWidget {
  const FiltersScreens({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      body:
        Column(
          children: [
            SwitchListTile(
              value: activeFilters[Filter.glutenFree] ?? false,
              onChanged: (isChecked) {
                ref.read(filtersProvider.notifier)
                   .setFilter(Filter.glutenFree, isChecked);
              },
              title: Text('Gluten-free', style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              )
              ),
              subtitle: Text('Only include gluten-free meals.',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      )
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22)
            ),
            SwitchListTile(
                value: activeFilters[Filter.lactoseFree] ?? false,
                onChanged: (isChecked) {
                  ref
                      .read(filtersProvider.notifier)
                      .setFilter(Filter.lactoseFree, isChecked);
                },
                title: Text('Lactose-free',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        )),
                subtitle: Text('Only include Lactose-free meals.',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        )),
                activeColor: Theme.of(context).colorScheme.tertiary,
                contentPadding: const EdgeInsets.only(left: 34, right: 22)),


            SwitchListTile(
                value: activeFilters[Filter.vegetarian] ?? false,
                onChanged: (isChecked) {
                  ref
                      .read(filtersProvider.notifier)
                      .setFilter(Filter.vegetarian, isChecked);
                },
                title: Text('Vegetarian-free',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        )),
                subtitle: Text('Only include Vegetarian-free meals.',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        )),
                activeColor: Theme.of(context).colorScheme.tertiary,
                contentPadding: const EdgeInsets.only(left: 34, right: 22)),
            SwitchListTile(
                value: activeFilters[Filter.vegan] ?? false,
                onChanged: (isChecked) {
                  ref
                      .read(filtersProvider.notifier)
                      .setFilter(Filter.vegan, isChecked);
                },
                title: Text('Vegan-free',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        )),
                subtitle: Text('Only include Vegan-free meals.',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        )),
                activeColor: Theme.of(context).colorScheme.tertiary,
                contentPadding: const EdgeInsets.only(left: 34, right: 22)),
          ]
        ),
    );
  }
}