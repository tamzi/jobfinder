import 'package:flutter/rendering.dart';

/// Holds the scaling factor for the currently running app.
/// For mobile this scaling factor will probably remain the same
/// throughout the lifetime of an app. For web, this might change
/// if the browser's window size changes.
///
/// The scaling factor is not exposed directly but via the
/// `scaleFactor` accessor.
class _Scale {
  static final _Scale _singleton = _Scale.internal();

  factory _Scale() => _singleton;

  _Scale.internal();

  double factor = 1.0;
}

/// Sets the scale based on the screen as in designs
/// and the actual device width.
///
/// If the screen is larger, then the scale factor will be > 1.0.
/// if the screen is smaller, then < 1.0.
///
/// The default value if `setScale` is not called is 1.0
///
/// For mobile, call `setScale` when the app starts.
/// On Web the scale factor could change based on the size of the window.
void setScale({double designedScreenWidth, double deviceWidth}) {
  _Scale().factor = deviceWidth / designedScreenWidth;
}

/// Returns the scale factor set by `setScale`.
double get scaleFactor => _Scale().factor;

/// Scales a value using the scaling factor.
/// When the actual device screen is larger than the screen width in the design
/// then this will increase the value passed in. If smaller,
/// then it will reduce the value passed in.
///
/// This will work for any width, height, padding etc passed in.
double value(double original) => original * _Scale().factor;

/// Returns a Size instance scaled based on the scale factor.
///
/// This is a convenience and calls the `value()` method to convert the
/// given size and return a new Size instance with the scaled width and height.
Size size(Size original) => Size(value(original.width), value(original.height));

///  To use just add:
/// import 'package:jobfinder/utils/scale.dart' as scale;
/// then use as: scale.value(double),
/// where double is the digit value as 45.0 hence will look like:
/// scale.value(45.0),
