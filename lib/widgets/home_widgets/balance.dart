import 'package:flutter/material.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              '₴2500.50',
              style: TextStyle(
                color: Colors.white,
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Available Balance',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                // fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const Spacer(),
        Row(
          // mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(
                Icons.notification_add_outlined,
                size: 25,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            ImageIcon(
              AssetImage('assets/images/1.png'),
              size: 50,
            ),
          ],
        ),
      ],
    );
  }
}
