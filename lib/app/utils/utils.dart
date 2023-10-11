import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class Toast {
  Toast._();

  static defaultToast(BuildContext context, String message) {
    OverlayEntry entry = OverlayEntry(builder: (context) {
      return Positioned(
        bottom: MediaQuery.of(context).viewInsets.bottom + 10,
        child: Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: Card(
            color: Colors.black.withOpacity(0.75),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(message, style: const TextStyle(color: Colors.white)),
            ),
          ),
        ),
      );
    });

    Overlay.of(context).insert(entry);
    Future.delayed(const Duration(seconds: 3)).then((value) => entry.remove());
  }
}

class AppLogger {
  AppLogger._();

  static Logger log = Logger();
}
