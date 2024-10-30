import 'package:flutter/material.dart';

notify({context, type, message}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: const Duration(seconds: 1),
      backgroundColor: type == 'success' ? Colors.green : Colors.red,
      content: Text(message)));
}
