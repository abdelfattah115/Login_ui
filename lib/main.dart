import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'login.dart';
import 'themes/app_theme.dart';
import 'themes/theme_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeModel(),
      child: Consumer<ThemeModel>(
          builder: (context, ThemeModel themeNotifier, child) {
        return MaterialApp(
          home: const LoginScreen(),
          theme: themeNotifier.isDark ? AppTheme.dark : AppTheme.light,
          debugShowCheckedModeBanner: false,
        );
      }),
    ),
  );
}
