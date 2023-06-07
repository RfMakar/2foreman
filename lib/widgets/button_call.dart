import 'package:flutter/material.dart';
import 'package:foreman/style/style_app.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonCall extends StatelessWidget {
  const ButtonCall({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        elevation: 4,
        backgroundColor: Color.fromRGBO(121, 155, 206, 1),
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
        //textStyle: AppTextStyle.heading,
      ),
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
      icon: const Icon(
        Icons.call,
        size: 18,
      ),
      label: Text(
        'Позвонить',
        textAlign: TextAlign.center,
        style: AppTextStyle.heading4,
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
        style: ElevatedButton.styleFrom(
          elevation: 4,
          backgroundColor: Color.fromRGBO(121, 155, 206, 1),
          foregroundColor: Color.fromARGB(255, 255, 255, 255),
          textStyle: AppTextStyle.heading4,
        ),
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
