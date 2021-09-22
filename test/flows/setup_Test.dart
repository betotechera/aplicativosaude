import 'package:bytebank/main.dart';
import 'package:flutter_test/flutter_test.dart';

import '../mocks/mocks.dart';

void main() {
  MockContactDao mockContactDao;

  setUp(() async {
    mockContactDao = MockContactDao();
  });

  testWidgets('Should save a contact', (tester) async {
    await tester.pumpWidget(BytebankApp(
      contactDao: mockContactDao,
    ));

    //test code
  });

  testWidgets('Should save contacts', (tester) async {
    final mockContactDao = MockContactDao();
    await tester.pumpWidget(BytebankApp(
      contactDao: mockContactDao,
    ));

    //test code
  });
}