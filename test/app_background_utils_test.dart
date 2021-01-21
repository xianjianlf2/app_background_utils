import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_background_utils/app_background_utils.dart';

void main() {
  const MethodChannel channel = MethodChannel('app_background_utils');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await AppBackgroundUtils.platformVersion, '42');
  });
}
