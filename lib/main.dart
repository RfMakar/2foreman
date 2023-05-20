import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foreman/my_app.dart';

void main() {
  googleFont();
  runApp(const MyApp());
}

void googleFont() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('assets/google_fonts//OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
}
