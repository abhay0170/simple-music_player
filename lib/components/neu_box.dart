import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final Widget child;

  const NeuBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            offset: Offset(-4, -4),
            blurRadius: 15,
          ),
          BoxShadow(
            color: Colors.grey.shade700,
            offset: Offset(4, 4),
            blurRadius: 15,
          ),
        ],
      ),
      padding: EdgeInsets.all(40),

      child: child,
    );
  }
}
