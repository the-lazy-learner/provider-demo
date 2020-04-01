import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:provider_demo/main.dart';

void main() {
  testWidgets('Smoke Test', (tester) async {
    await tester.pumpWidget(MyApp());
    await tester.tap(find.text('Enter'));
  });
}
