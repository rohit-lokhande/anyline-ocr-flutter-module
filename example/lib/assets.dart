/// A class containing asset paths for assets bundled with the Flutter application.
abstract class FlutterAssets {
  static const String _basePath = "flutter_assets";
  static const String customScripts = "${_basePath}/custom_scripts";
  static const String config = "${_basePath}/config";
}

/// A class containing paths for configuration files bundled with the application.
abstract class Config {
  static const String _basePath = "config";
  static const String license = "${_basePath}/license.json";

  static String configFile(String config) =>
      "${_basePath}/${config}Config.json";
}

/// A class containing paths for image assets bundled with the application.
abstract class ImageAssets {
  static const String _basePath = "assets";
  static const String anylineFlutterAppbar =
      "${_basePath}/anyline_flutter_appbar.png";
  static const String meter = "${_basePath}/Meter.png";
  static const String barcode = "${_basePath}/Barcode.png";
  static const String id = "${_basePath}/ID.png";
  static const String vehicle = "${_basePath}/Vehicle.png";
  static const String ocr = "${_basePath}/OCR.png";
  static const String other = "${_basePath}/Other.png";
}
