import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/providers/filters_providers.dart';

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: const Text("Your Filters"),
      ),
      body: Column(children: [
        SwitchListTile(
          value: activeFilters[Filter.glutenFree]!,
          onChanged: (newValue) {
            ref
                .read(filtersProvider.notifier)
                .setFilter(Filter.glutenFree, newValue);
          },
          title: Text(
            "Gluten-free",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          subtitle: Text(
            "Only include Gluten-free meals",
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          activeColor: Theme.of(context).colorScheme.tertiary,
          contentPadding: const EdgeInsets.only(left: 34, right: 22),
        ),
        SwitchListTile(
          value: activeFilters[Filter.lactoseFree]!,
          onChanged: (newValue) {
            ref
                .read(filtersProvider.notifier)
                .setFilter(Filter.lactoseFree, newValue);
          },
          title: Text(
            "Lactose-free",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          subtitle: Text(
            "Only include Lactose-free meals",
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          activeColor: Theme.of(context).colorScheme.tertiary,
          contentPadding: const EdgeInsets.only(left: 34, right: 22),
        ),
        SwitchListTile(
          value: activeFilters[Filter.vegetarian]!,
          onChanged: (newValue) {
            ref
                .read(filtersProvider.notifier)
                .setFilter(Filter.vegetarian, newValue);
          },
          title: Text(
            "Vegetarian",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          subtitle: Text(
            "Only include Vegetarian meals",
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          activeColor: Theme.of(context).colorScheme.tertiary,
          contentPadding: const EdgeInsets.only(left: 34, right: 22),
        ),
        SwitchListTile(
          value: activeFilters[Filter.vegan]!,
          onChanged: (newValue) {
            ref
                .read(filtersProvider.notifier)
                .setFilter(Filter.vegan, newValue);
          },
          title: Text(
            "Vegan",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          subtitle: Text(
            "Only include Vegan meals",
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          activeColor: Theme.of(context).colorScheme.tertiary,
          contentPadding: const EdgeInsets.only(left: 34, right: 22),
        )
      ]),
    );
  }
}
