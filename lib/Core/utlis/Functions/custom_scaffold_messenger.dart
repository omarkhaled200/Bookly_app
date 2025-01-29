import 'package:flutter/material.dart';

void CustomScaffoldMessenger(context, String text) {
    ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(text)));
}
