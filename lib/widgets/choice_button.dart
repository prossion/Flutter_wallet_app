import 'package:flutter/material.dart';

class ChoiceButtonWidget extends StatelessWidget {
  const ChoiceButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: const Text(
            'All',
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
              Icon(Icons.money, color: Colors.green),
              SizedBox(
                width: 10,
              ),
              Text(
                'Income',
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
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Row(
            children: const [
              Icon(Icons.money, color: Colors.amber),
              SizedBox(
                width: 10,
              ),
              Text(
                'Expense',
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
