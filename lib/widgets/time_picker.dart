import 'package:flutter/material.dart';
import 'package:next_life/styles/buttons.dart';

class MTimePicker extends StatelessWidget {
  const MTimePicker({super.key, required this.time, required this.onChange});

  final TimeOfDay? time;
  final void Function(TimeOfDay?) onChange;

  String _getTimetring(TimeOfDay t) {
    return "${t.hour}:${t.minute}";
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyles.elevatedButton(null),
      child: Text(_getTimetring(time ?? TimeOfDay.now())),
      onPressed: () async {
        final TimeOfDay? _time = await showTimePicker(
          context: context,
          initialTime: time ?? TimeOfDay.now(),
          initialEntryMode: TimePickerEntryMode.input,
          orientation: Orientation.portrait,
          builder: (BuildContext context, Widget? child) {
            return Theme(
              data: Theme.of(context).copyWith(
                materialTapTargetSize: MaterialTapTargetSize.padded,
              ),
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: MediaQuery(
                  data: MediaQuery.of(context).copyWith(
                    alwaysUse24HourFormat: true,
                  ),
                  child: child!,
                ),
              ),
            );
          },
        );
        onChange(_time);
      },
    );
  }
}
