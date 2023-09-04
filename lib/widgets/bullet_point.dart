import 'package:flutter/material.dart';

class BulletPoint extends StatelessWidget {
  const BulletPoint({
    required String text,
    super.key,
  }) : _text = text;

  final String _text;

  @override
  Widget build(BuildContext context) => Text(
        '\u2022 $_text',
        style: Theme.of(context).textTheme.displaySmall,
        textAlign: TextAlign.center,
      );
}
