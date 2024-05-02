import 'package:face_camera/face_camera.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const MethodChannel channel = MethodChannel('face_camera');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMethodCallHandler(null);
  });

  test('getCameras', () async {
    expect(FaceCameraPlus.cameras, []);
  });
}
