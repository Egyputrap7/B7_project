import 'package:final_exam_project/main_page.dart'; 
import 'package:final_exam_project/view/halaman_login.dart';
import 'package:final_exam_project/view/halaman_register.dart'; 
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; 
import 'package:flutter_test/flutter_test.dart'; 
import 'package:final_exam_project/main.dart' as app; 
import 'package:integration_test/integration_test.dart'; 
 
void main() { 
  IntegrationTestWidgetsFlutterBinding.ensureInitialized(); 
 
  group('Register Test', () { 
    testWidgets('Verify register', 
        (WidgetTester tester) async { 
      app.main(); 
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));
      await tester.pumpAndSettle(); 
      await tester.tap(find.text('Sign Up')); 
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2)); 
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextFormField).at(0), 'roki'); 
      await Future.delayed(const Duration(seconds: 2)); 
      await tester.enterText(find.byType(TextFormField).at(1), 'rriii@gmail.com'); 
      await Future.delayed(const Duration(seconds: 2)); 
      await tester.enterText(find.byType(TextFormField).at(2), 'roki123123432'); 
      await Future.delayed(const Duration(seconds: 2)); 

      await tester.drag(find.byType(SingleChildScrollView), const Offset(0, -500));
      await tester.pumpAndSettle();

     // Tap the login button
      await tester.tap(find.byKey(Key('registerr')));
      await Future.delayed(const Duration(seconds: 2));
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));
        await tester.pumpAndSettle();
      expect(find.text('Registration Successful'), findsOneWidget);
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.text('OK'));
        await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));
      await tester.pumpAndSettle();
      expect(find.byType(HalamanLogin), findsOneWidget);
       await tester.pumpAndSettle();
      
    });
  });
  
}
