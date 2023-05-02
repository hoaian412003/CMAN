import 'package:flutter/material.dart';

class TextInputWidget extends StatefulWidget {
  final String placeHolder;
  final void Function(String) onChanged;
  final String value;

  const TextInputWidget(
      {super.key,
      required this.placeHolder,
      required this.onChanged,
      this.value = ''});

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController(text: '');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      controller.text = widget.value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        hintText: widget.placeHolder,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
