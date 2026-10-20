import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/register_screen.dart';
import 'screens/login_screen.dart';
import 'screens/forgot_password_step1_screen.dart';
import 'screens/forgot_password_step2_screen.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const JobTrackerApp());
}

class JobTrackerApp extends StatelessWidget {
  const JobTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Job Search Tracker',
      theme: AppTheme.lightTheme,
      home: const MainNavigationWrapper(),
    );
  }
}

class MainNavigationWrapper extends StatefulWidget {
  const MainNavigationWrapper({super.key});

  @override
  State<MainNavigationWrapper> createState() => _MainNavigationWrapperState();
}

class _MainNavigationWrapperState extends State<MainNavigationWrapper> {
  String _currentScreen = 'register';

  void _navigateTo(String screenKey) {
    setState(() {
      _currentScreen = screenKey;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen;

    switch (_currentScreen) {
      case 'register':
        activeScreen = RegisterScreen(onNavigate: _navigateTo);
        break;
      case 'login':
        activeScreen = LoginScreen(onNavigate: _navigateTo);
        break;
      case 'forgot_step1':
        activeScreen = ForgotPasswordStep1Screen(onNavigate: _navigateTo);
        break;
      case 'forgot_step2':
        activeScreen = ForgotPasswordStep2Screen(onNavigate: _navigateTo);
        break;
      case 'home':
        activeScreen = HomeScreen(onNavigate: _navigateTo);
        break;
      case 'profile':
        activeScreen = ProfileScreen(onNavigate: _navigateTo);
        break;
      default:
        activeScreen = RegisterScreen(onNavigate: _navigateTo);
    }

    return activeScreen;
  }
}
