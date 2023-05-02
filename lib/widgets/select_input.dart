import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SelectInputWidget extends StatefulWidget {
  final Function(dynamic) onChanged;
  final List<String> items;
  final String? value;
  const SelectInputWidget(
      {super.key, required this.onChanged, required this.items, this.value});

  @override
  State<SelectInputWidget> createState() => _SelectInputWidgetState();
}

class _SelectInputWidgetState extends State<SelectInputWidget> {
  String? value;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      value = widget.value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: value ?? widget.items[0],
      onChanged: (String? value) {
        setState(() {
          this.value = value;
        });
        widget.onChanged(value);
      },
      items: widget.items
          .map((item) => DropdownMenuItem(value: item, child: Text(item)))
          .toList(),
    );
  }
}
