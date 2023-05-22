import 'package:flutter/material.dart';
import 'package:foreman/style/style_app.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonCall extends StatelessWidget {
  const ButtonCall({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Позвонить',
          style: AppTextStyle.heading3,
        ),
      ),
    );
  }
}

class ButtonCallMaster extends StatelessWidget {
  const ButtonCallMaster({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
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
        child: const Text('Вызвать мастера'),
      ),
    );
  }
}
