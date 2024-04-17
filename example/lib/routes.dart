/// A class containing route names for navigation within the app.
abstract class Routes {
  /// Route name for displaying the result.
  static const String resultDisplay = "/resultDisplay";

  /// Route name for displaying the full image within the result display.
  static const String fullImage = "${resultDisplay}/fullImage";

  /// Route name for displaying the composite result.
  static const String compositeResultDisplay = "compositeResultDisplay";
}
