import 'package:flutter/material.dart';

class LeftPane extends StatelessWidget {
  final int selected;
  final Function mainNavAction;
  const LeftPane({super.key, required this.selected, required this.mainNavAction});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
    );
  }
}