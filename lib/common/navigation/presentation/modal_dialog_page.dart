import 'package:flutter/material.dart';

class ModalDialogPage extends Page {
  final Widget child;

  const ModalDialogPage({
    required this.child,
    super.key,
    super.name,
  });

  @override
  Route createRoute(BuildContext context) {
    return DialogRoute(
      context: context,
      builder: (_) => child,
      barrierColor: Colors.black54,
      barrierDismissible: false,
      settings: this,
    );
  }
}