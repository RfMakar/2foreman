import 'package:flutter/material.dart';
import 'package:foreman/widgets/app_application.dart';
import 'package:foreman/widgets/app_contacts.dart';
import 'package:foreman/widgets/app_lozung.dart';
import 'package:foreman/widgets/app_mastera.dart';
import 'package:foreman/widgets/app_title.dart';
import 'package:foreman/widgets/app_uslugi.dart';
import 'package:url_launcher/url_launcher.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          foregroundColor: Color.fromARGB(255, 255, 255, 255),
          onPressed: () async {
            final call = Uri.parse('tel:+79219140899');
            if (await canLaunchUrl(call)) {
              launchUrl(
                call,
              );
            } else {
              throw 'Could not launch $call';
            }
          },
          child: const Icon(Icons.call),
        ),
        body: ListView(
          padding: size < 1100
              ? const EdgeInsets.all(0)
              : EdgeInsets.fromLTRB(size * 0.15, 0, size * 0.15, 0),
          children: const [
            WidgetAppTitle(),
            // SizedBox(height: 20),
            WidgetAppLozung(),
            SizedBox(height: 30),
            WidgetAppUslugi(),
            SizedBox(height: 30),
            WidgetAppMastera(),
            SizedBox(height: 30),
            WidgetAppContacts(),
            SizedBox(height: 10),
            WidgetAppApplication()
          ],
        ));
  }
}
