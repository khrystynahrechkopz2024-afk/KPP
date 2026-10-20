import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kpp_app_1/main.dart';
import 'package:kpp_app_1/screens/profile_screen.dart';

void main() {
  testWidgets('JobTrackerApp smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const JobTrackerApp());
    expect(find.text('Створіть акаунт'), findsOneWidget);
  });

  testWidgets('Registration fields start empty and accept user input', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const JobTrackerApp());

    final emailField = tester.widget<TextFormField>(
      find.byType(TextFormField).first,
    );
    expect(emailField.initialValue, '');
    final emailDecoration = tester.widget<InputDecorator>(
      find.byType(InputDecorator).first,
    );
    expect(emailDecoration.decoration.hintText, 'example@gmail.com');

    await tester.enterText(find.byType(TextFormField).first, 'user@example.com');
    expect(find.text('user@example.com'), findsOneWidget);
    expect(find.text('Паролі не збігаються — перевірте ще раз'), findsNothing);
  });

  testWidgets('Profile details start empty and accept user input', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: ProfileScreen()),
    );

    final emailField = tester.widget<TextFormField>(
      find.byType(TextFormField).at(1),
    );
    expect(emailField.initialValue, '');

    await tester.enterText(find.byType(TextFormField).at(1), 'user@example.com');
    expect(find.text('user@example.com'), findsOneWidget);
  });
}
