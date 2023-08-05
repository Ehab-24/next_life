import 'package:flutter/material.dart';
import 'package:next_life/constants/spacing.dart';
import 'package:next_life/styles/text.dart';
import 'package:next_life/widgets/buttons/elevated_buttons.dart';

enum Theme { light, dark }

class ChangeAppearancePage extends StatefulWidget {
  const ChangeAppearancePage({super.key});

  @override
  State<ChangeAppearancePage> createState() => _ChangeAppearancePageState();
}

class _ChangeAppearancePageState extends State<ChangeAppearancePage> {
  Theme? _theme = Theme.light;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Center(
                    child: Text(
                      "Appearance",
                      style: TextStyles.lg,
                    ),
                  ),
                  Space.h32,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ThemeModeContainer(isDark: false),
                            Space.h8,
                            Radio(
                                value: Theme.light,
                                groupValue: _theme,
                                onChanged: (Theme? value) {
                                  setState(() {
                                    _theme = value;
                                  });
                                }),
                            Space.h8,
                            const Text("Light Mode")
                          ],
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ThemeModeContainer(isDark: true),
                            Space.h8,
                            Radio(
                                value: Theme.dark,
                                groupValue: _theme,
                                onChanged: (Theme? value) {
                                  setState(() {
                                    _theme = value;
                                  });
                                }),
                            Space.h8,
                            const Text("Dark Mode")
                          ],
                        )
                      ],
                    ),
                  ),
                  Space.h32,
                  MElevatedButton(
                    text: "Save",
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ThemeModeContainer extends StatelessWidget {
  final bool isDark;
  Color backgroundColor = Colors.white;
  Color foregroundColor = Colors.purple.shade800.withOpacity(0.4);
  Color borderColor = Colors.purple;

  ThemeModeContainer({
    required this.isDark,
    super.key,
  }) {
    if (isDark) {
      backgroundColor = Colors.grey.shade900;
      foregroundColor = Colors.purple.shade300.withOpacity(0.8);
      borderColor = Colors.purple.shade300;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 160,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FractionallySizedBox(
              widthFactor: 1.0,
              child: Container(
                height: 14,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: foregroundColor,
                ),
              ),
            ),
            Space.h8,
            FractionallySizedBox(
              widthFactor: 0.8,
              child: Container(
                height: 14,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: foregroundColor,
                ),
              ),
            ),
            const Spacer(),
            FractionallySizedBox(
              widthFactor: 1.0,
              child: Container(
                height: 24,
                decoration: BoxDecoration(
                  border: Border.all(color: borderColor),
                  borderRadius: BorderRadius.circular(4),
                  color: isDark ? Colors.white : Colors.grey.shade800,
                ),
              ),
            ),
            Space.h8,
            FractionallySizedBox(
              widthFactor: 1.0,
              child: Container(
                height: 24,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white.withOpacity(0.5),
                  ),
                  borderRadius: BorderRadius.circular(4),
                  color: foregroundColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
