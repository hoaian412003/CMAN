import 'package:cms/config/icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputWidget extends StatefulWidget {
  final TextEditingController controller;
  final String placeHolder;
  final String? icon;

  const InputWidget(
      {super.key,
      required this.controller,
      required this.placeHolder,
      this.icon});

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TextField(
      controller: widget.controller,
      decoration: InputDecoration(
          hintText: widget.placeHolder, prefixIcon: const Icon(Icons.search)),
    ));
  }
}
