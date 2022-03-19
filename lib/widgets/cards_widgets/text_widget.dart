import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Your Cards',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w700)),
            SizedBox(
              height: 5,
            ),
            Text(
              '2 physical card, 1 virtual card',
              style: TextStyle(color: Colors.black54, fontSize: 16),
            )
          ],
        ),
        const Spacer(),
        const Text(
          '...',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
