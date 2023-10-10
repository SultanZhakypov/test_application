import 'package:flutter/material.dart';
import 'package:test_application/modules/home/ui/widgets/custom_search_delegate.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: GestureDetector(
        onTap: () =>
            showSearch(context: context, delegate: CustomSearchDelegate()),
        child: TextField(
          onTapOutside: (event) =>
              WidgetsBinding.instance.focusManager.primaryFocus?.unfocus(),
          enabled: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            label: const Text('Поиск'),
          ),
        ),
      ),
    );
  }
}
