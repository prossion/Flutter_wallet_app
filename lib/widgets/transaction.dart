import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.cost,
      required this.date,
      required this.title2,
      required this.subtitle2,
      required this.cost2,
      required this.date2,
      required this.day})
      : super(key: key);
  final String day;
  final String title;
  final String subtitle;
  final String cost;
  final String date;
  final String title2;
  final String subtitle2;
  final String cost2;
  final String date2;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        day,
        style: TextStyle(fontSize: 16, color: Colors.black26),
      ),
      const SizedBox(
        height: 10,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.breakfast_dining),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title),
                      Text(subtitle),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Text(cost),
                      Text(date),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 0.5),
          Container(
            decoration: const BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.breakfast_dining),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title2),
                      Text(subtitle2),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Text(cost2),
                      Text(date2),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    ]);
  }
}
