import 'package:flutter/material.dart';
import 'package:localsend_app/theme.dart';

/// A [DropdownButton] with a custom theme.
/// Currently, there is no easy way to apply color and border radius to all [DropdownButton].
class CustomDropdownButton<T> extends StatelessWidget {
  final T value;
  final List<DropdownMenuItem<T>> items;
  final ValueChanged<T?>? onChanged;

  const CustomDropdownButton({
    required this.value,
    required this.items,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Theme.of(context).inputDecorationTheme.fillColor,
        borderRadius: Theme.of(context).inputDecorationTheme.borderRadius,
      ),
      child: DropdownButton<T>(
        value: value,
        isExpanded: true,
        underline: Container(),
        borderRadius: Theme.of(context).inputDecorationTheme.borderRadius,
        items: items,
        onChanged: onChanged,
      ),
    );
  }
}
