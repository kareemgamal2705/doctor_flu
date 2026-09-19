import 'dart:ui';

class AssetsManager {
  static const String _imagesPath = 'assets/images/';
  static const String _svgsPath = 'assets/svgs/';

  static const String onboardingDoctor = '${_imagesPath}onboarding_doctor.png';
  static const String docdocLogo = '${_imagesPath}docdoc_logo.png';

  static const String googleIcon = '${_svgsPath}google_icon.svg';
  static const String facebookIcon = '${_svgsPath}facebook_icon.svg';
  static const String appleIcon = '${_svgsPath}apple_icon.svg';
}

class CustomFontWeight {
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
}
