import 'package:final_exam_project/view/halaman_login.dart';
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
      await tester.pumpAndSettle();

      // Enter valid login credentials
      await tester.enterText(find.byType(TextFormField).at(0), 'admin@admin.com');
      await Future.delayed(const Duration(seconds: 2));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(TextFormField).at(1), '123456');
      await Future.delayed(const Duration(seconds: 2));
      await tester.pumpAndSettle();
      await tester.drag(
          find.byType(SingleChildScrollView), const Offset(0, -500));
      await Future.delayed(const Duration(seconds: 2));

      // Tap the login button
      await tester.tap(find.widgetWithText(GestureDetector, 'Login'));
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));
      expect(find.text('Login Admin Successful'), findsOneWidget);
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.text('OK'));

      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));

       await tester.tap(find.text('Profile'));

    // Wait for the navigation to complete.
    await tester.pumpAndSettle();

    // Expect to find the 'Profile' screen or widget, adjust this based on your app's navigation logic.
    expect(find.text('Profile'), findsOneWidget);
     await tester.pumpAndSettle();
     await Future.delayed(const Duration(seconds: 2));
     await tester.tap(find.text('Logout'));
     await tester.pumpAndSettle();
     await Future.delayed(const Duration(seconds: 2));
     expect(find.byType(HalamanLogin), findsOneWidget);
       await tester.pumpAndSettle();
    });
  });
}
