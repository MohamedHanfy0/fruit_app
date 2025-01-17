import 'package:flutter/material.dart';

class LoadingOverlay extends StatelessWidget {
 final Widget child;
  final bool isLoading;
  const LoadingOverlay({
    super.key, required this.child, required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return LoadingOverlay(
        isLoading:isLoading,
        child: child);
  }
}
