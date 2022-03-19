import 'package:flutter/material.dart';

class ChoiceButtonCards extends StatelessWidget {
  const ChoiceButtonCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: const Text(
            'Physical Card',
            style: TextStyle(color: Colors.blueAccent),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Row(
            children: const [
              Text(
                'Virtual Card',
                style: TextStyle(color: Colors.blueAccent),
              ),
            ],
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ],
    );
  }
}
