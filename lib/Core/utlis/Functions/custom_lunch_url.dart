import 'package:bookly_app/Core/utlis/Functions/custom_scaffold_messenger.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customlunchurl(context, String? Url) async {
  if (Url !=null) {
  Uri url = Uri.parse(Url);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    CustomScaffoldMessenger(context,'Cannot lauch $url');
  }
}
}

