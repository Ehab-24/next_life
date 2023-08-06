import 'package:flutter/material.dart';
import 'package:next_life/constants/spacing.dart';
import 'package:next_life/providers/theme.dart';
import 'package:next_life/styles/text.dart';
import 'package:next_life/widgets/buttons/elevated_buttons.dart';
import 'package:provider/provider.dart';

class ChangeAppearancePage extends StatefulWidget {
  const ChangeAppearancePage({super.key});

  @override
  State<ChangeAppearancePage> createState() => _ChangeAppearancePageState();
}

class _ChangeAppearancePageState extends State<ChangeAppearancePage> {
  ThemeMode _theme = ThemeMode.light;

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
                            _ThemeModeContainer(isDark: false),
                            Space.h8,
                            Radio(
                                value: ThemeMode.light,
                                groupValue: _theme,
                                onChanged: (ThemeMode? value) {
                                  setState(() {
                                    _theme = value ?? ThemeMode.light;
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
                            _ThemeModeContainer(isDark: true),
                            Space.h8,
                            Radio(
                                value: ThemeMode.dark,
                                groupValue: _theme,
                                onChanged: (ThemeMode? value) {
                                  setState(() {
                                    _theme = value ?? ThemeMode.light;
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
                    onPressed: () {
                      Provider.of<ThemeProvider>(context, listen: false)
                          .setTheme(_theme);
                    },
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

class _ThemeModeContainer extends StatelessWidget {
  final bool isDark;

  _ThemeModeContainer({
    required this.isDark,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Color foregroundColor = Theme.of(context).colorScheme.secondary;
    final Color backgroundColor = isDark
        ? const Color.fromRGBO(44, 44, 44, 1)
        : Color.fromARGB(255, 229, 240, 238);
    final Color textColor = isDark ? Colors.white24 : Colors.black54;

    return Container(
      width: 120,
      height: 160,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
        border:
            isDark ? null : Border.all(color: Theme.of(context).primaryColor),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FractionallySizedBox(
              widthFactor: 1.0,
              child: Container(
                height: 11,
                color: textColor,
              ),
            ),
            Space.h8,
            FractionallySizedBox(
              widthFactor: 0.8,
              child: Container(
                height: 11,
                color: textColor,
              ),
            ),
            const Spacer(),
            FractionallySizedBox(
              widthFactor: 1.0,
              child: Container(
                height: 24,
                decoration: BoxDecoration(
                  border: Border.all(color: foregroundColor),
                  borderRadius: BorderRadius.circular(4),
                  color: isDark ? Colors.grey.shade900 : Colors.white,
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
