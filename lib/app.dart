import 'package:flutter/material.dart';
import 'package:mcworth/core/constants/routes.dart'; // Your custom route file
import 'package:mcworth/core/constants/theme.dart'; // Your custom theme file
import 'package:mcworth/features/auth/presentation/pages/login_page.dart'; // Example login page
import 'package:mcworth/l10n/app_localizations.dart'; // For localization (optional)

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App',
      theme: AppTheme.lightTheme,
      initialRoute: Routes.initial,
      routes: Routes.getRoutes(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      localeResolutionCallback: (locale, supportedLocales) {
        // Return the locale supported by the app
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale?.languageCode &&
              supportedLocale.countryCode == locale?.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
    );
  }
}
