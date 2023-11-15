import 'package:flutter/material.dart';
import 'package:whatsapp_clone/presentation/screens/main_screen.dart';

import '../screens/auth_page.dart';
import '../screens/chat/inbox.dart';
import '../screens/contact/contact_page.dart';
import '../screens/splash_screen.dart';
import '../screens/updates/story_view.dart';
import '../screens/welcome_screen.dart';

class RouteNames {
  static const String splashScreen = '/s';
  static const String mainScreen = '/mainScreen';
  static const String inbox = '/inbox';
  static const String storyPage = '/storyPage';
  static const String contactPage = '/contact';
  static const String welcome = '/welcome';
  static const String auth = '/auth';

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splashScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const SplashScreen());

      case RouteNames.welcome:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const WelcomeScreen());
        
      case RouteNames.auth:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const AuthPage());

      case RouteNames.mainScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const MainScreen());

      case RouteNames.inbox:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const Inbox());

      case RouteNames.storyPage:
        return MaterialPageRoute(
            settings: settings, builder: (_) => MyStoryPage());

      case RouteNames.contactPage:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const ContactPage());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No Route Found ${settings.name}'),
            ),
          ),
        );
    }
  }
}