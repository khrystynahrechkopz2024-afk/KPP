import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kpp_app_1/main.dart';
import 'package:kpp_app_1/screens/profile_screen.dart';

void main() {
  testWidgets('JobTrackerApp smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const JobTrackerApp());
    expect(find.text('Створіть акаунт'), findsOneWidget);
  });

  testWidgets('Registration screen displays expected text', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const JobTrackerApp());
    expect(find.text('Job Tracker'), findsOneWidget);
  });

  testWidgets('Profile screen displays user details', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: ProfileScreen()),
    );

    expect(find.text('Олена Мельник'), findsOneWidget);
    expect(find.text('Product Designer · Київ'), findsOneWidget);
  });
}
