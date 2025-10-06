import 'package:flutter/material.dart';

class SelectableOptionsExpansion extends StatefulWidget {
  final String title;
  final List<String> options; // النصوص اللي بتظهر
  final ValueChanged<int?>? onChanged; // بيرجع selected index

  const SelectableOptionsExpansion({
    super.key,
    required this.title,
    required this.options,
    this.onChanged,
  });

  @override
  State<SelectableOptionsExpansion> createState() =>
      _SelectableOptionsExpansionState();
}

class _SelectableOptionsExpansionState
    extends State<SelectableOptionsExpansion> {
  int? _selected;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(widget.title),
      children: List.generate(
        widget.options.length,
        (index) => RadioListTile<int>(
          value: index,
          groupValue: _selected,
          onChanged: (val) {
            setState(() {
              _selected = val;
            });
            widget.onChanged?.call(val);
          },
          title: Text(widget.options[index]),
        ),
      ),
    );
  }
}
