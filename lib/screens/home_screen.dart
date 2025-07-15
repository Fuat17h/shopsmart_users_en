import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopsmart_users_en/widgets/subtitle_text.dart';

import '../providers/theme_provider.dart';
import '../widgets/title_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SubtitleTextWidget(label: "Hello World!"),
            TitlesTextWidget(label: "Hello this is a Title" * 10),
            ElevatedButton(onPressed: () {}, child: Text("Hello World")),
            SwitchListTile(
              title: Text(
                themeProvider.getIsDarkTheme ? "Dark Mode" : "Light Mode",
              ),
              value: themeProvider.getIsDarkTheme,
              onChanged: (value) {
                themeProvider.setDarkTheme(themeValue: value);
                log("Theme state ${themeProvider.getIsDarkTheme}");
              },
            ),
          ],
        ),
      ),
    );
  }
}
