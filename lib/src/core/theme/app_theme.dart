import 'package:air_booking_app/src/core/theme/border_size.dart';
import 'package:air_booking_app/src/core/theme/colors.dart';
import 'package:air_booking_app/src/core/theme/images.dart';
import 'package:air_booking_app/src/core/theme/padding.dart';
import 'package:air_booking_app/src/core/theme/text_styles.dart';

class AppTheme {
  AppTheme._();

  static const AppThemeColors colors = AppThemeColors();
  static const AppThemeImages images = AppThemeImages();

  static const AppThemePadding padding = AppThemePadding();
  static AppThemeTextStyles textStyles = AppThemeTextStyles();
  static const AppThemeBorderSize borderSize = AppThemeBorderSize();
}
