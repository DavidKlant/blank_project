import 'package:flutter/material.dart';

class PopUpPage extends StatelessWidget {
  static const String route = "/pop_up";

  final Widget child;
  final Alignment? alignment;

  const PopUpPage({required this.child, this.alignment, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: _PopableBackground(
        alignment: alignment,
        child: child,
      ),
    );
  }
}

class _PopableBackground extends StatelessWidget {
  final Widget child;

  final Alignment? alignment;
  const _PopableBackground({required this.child, this.alignment, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.canPop(context) ? Navigator.pop(context) : null;
          },
          child: Container(color: Colors.transparent),
        ),
        Align(
          alignment: alignment ?? Alignment.center,
          child: child,
        )
      ],
    );
  }
}
