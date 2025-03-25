import 'package:flutter/material.dart';

class OverlayController {
  static OverlayEntry? _overlayEntry;

  static void showOverlay(BuildContext context, String message) {
    if (_overlayEntry != null) return; // Prevent multiple overlays

    final overlay = Overlay.of(context);

    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: 100,
        left: 50,
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.8),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );

    overlay.insert(_overlayEntry!);

    // Auto-remove overlay after 2 seconds
    Future.delayed(const Duration(seconds: 2), () {
      removeOverlay();
    });
  }

  static void removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }
}
