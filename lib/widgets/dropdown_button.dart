import 'package:flutter/material.dart';
import 'package:next_life/styles/text.dart';

class MDropdownButton extends StatefulWidget {
  const MDropdownButton({
    super.key,
    required this.options,
    required this.onChange,
    required this.value,
    this.isLight,
  });

  final List<String> options;
  final String value;
  final bool? isLight;
  final void Function(String?) onChange;

  @override
  State<MDropdownButton> createState() => _MDropdownButtonState();
}

class _MDropdownButtonState extends State<MDropdownButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 39),
      decoration: BoxDecoration(
        color: widget.isLight ?? false
            ? Theme.of(context).colorScheme.secondary
            : Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton<String>(
        value: widget.value.isNotEmpty ? widget.value : null,
        alignment: Alignment.bottomRight,
        isExpanded: true,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        focusColor: Colors.black.withOpacity(0.08),
        icon: Icon(
          Icons.keyboard_arrow_down_outlined,
          color: Colors.white,
        ),
        dropdownColor: widget.isLight ?? false
            ? Theme.of(context).colorScheme.secondary
            : Theme.of(context).colorScheme.background,
        style: TextStyles.sm,
        underline: SizedBox.shrink(),
        onChanged: widget.onChange,
        items: widget.options.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
