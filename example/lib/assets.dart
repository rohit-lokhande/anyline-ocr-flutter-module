/// A class containing asset paths for assets bundled with the Flutter application.
abstract class FlutterAssets {
  static const String _flutterAssets = "flutter_assets";
  static const String customScripts = "${_flutterAssets}/custom_scripts";
  static const String config = "${_flutterAssets}/config";
}

/// A class containing paths for configuration files bundled with the application.
abstract class Config {
  static const String _config = "config";
  static const String license = "${_config}/license.json";
}

/// A class containing paths for image assets bundled with the application.
abstract class ImageAssets {
  static const String _assets = "assets";
  static const String anylineFlutterAppbar = "${_assets}/anyline_flutter_appbar.png";
  static const String meter = "${_assets}/Meter.png";
  static const String barcode = "${_assets}/Barcode.png";
  static const String id = "${_assets}/ID.png";
  static const String vehicle = "${_assets}/Vehicle.png";
  static const String ocr = "${_assets}/OCR.png";
  static const String other = "${_assets}/Other.png";
}
