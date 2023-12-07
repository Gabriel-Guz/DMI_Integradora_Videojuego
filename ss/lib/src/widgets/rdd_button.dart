import 'package:flutter/material.dart';

import '../palatte.dart';

class RoundedButtonb extends StatelessWidget {
  const RoundedButtonb({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.tryParse('150'),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(),
          child: Text(
            buttonText,
            style: kBodyText,
          ),
        ),
      ),
    );
  }

  //FlatButton({required Null Function() onPressed, required Padding child}) {}
}
