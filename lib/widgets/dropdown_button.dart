import 'package:flutter/material.dart';

class MDropdownButton extends StatefulWidget {
  const MDropdownButton({
    super.key,
    required this.options,
    required this.onChange,
    required this.value,
  });

  final List<String> options;
  final String value;
  final void Function(String?) onChange;

  @override
  State<MDropdownButton> createState() => _MDropdownButtonState();
}

class _MDropdownButtonState extends State<MDropdownButton> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: widget.value.isNotEmpty ? widget.value : null,
      alignment: Alignment.bottomRight,
      isExpanded: true,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      focusColor: Colors.black.withOpacity(0.08),
      icon: Icon(
        Icons.keyboard_arrow_down_outlined,
        color: Theme.of(context).colorScheme.primary,
      ),
      style: TextStyle(
        color: Theme.of(context).colorScheme.primary,
      ),
      underline: SizedBox.shrink(),
      borderRadius: BorderRadius.circular(10),
      onChanged: widget.onChange,
      items: widget.options.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
