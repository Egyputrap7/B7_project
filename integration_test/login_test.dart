import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:final_exam_project/main.dart' as app;
import 'package:final_exam_project/main_page.dart'; // Import HomeAdmin

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Login Test', () {
    testWidgets('Verify Login as Admin', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));

      // Enter valid login credentials
      await tester.enterText(
          find.byType(TextFormField).at(0), 'admin@admin.com');
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextFormField).at(1), '123456');
      await Future.delayed(const Duration(seconds: 2));
      await tester.drag(
          find.byType(SingleChildScrollView), const Offset(0, -500));
      await Future.delayed(const Duration(seconds: 2));

      // Tap the login button
      await tester.tap(find.widgetWithText(GestureDetector, 'Login'));
      await Future.delayed(const Duration(seconds: 2));
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));

      // Expect to find the HomeAdmin widget on successful login
      expect(find.byType(MainPage), findsOneWidget);
    });
  });
}
