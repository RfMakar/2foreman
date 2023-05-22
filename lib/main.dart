import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foreman/my_app.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  usePathUrlStrategy();
  googleFont();
  runApp(const MyApp());
}

void googleFont() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('assets/google_fonts//OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
}
