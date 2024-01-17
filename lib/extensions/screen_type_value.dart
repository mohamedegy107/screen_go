import '../enums/screen_type_enums.dart';
import '../models/device_data.dart';

extension ScreenTypeValue on dynamic {
  dynamic stv({
    required dynamic mobile,
    required dynamic tablet,
    required dynamic desktop,
  }) {
    if (DeviceData.screenType == DeviceScreenType.desktop) {
      return desktop;
    } else if (DeviceData.screenType == DeviceScreenType.tablet) {
      return tablet;
    } else if (DeviceData.screenType == DeviceScreenType.mobile) {
      return mobile;
    } else {
      return this;
    }
  }
}
