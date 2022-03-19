import 'package:flutter/material.dart';

import '../widgets/balance.dart';
import '../widgets/choice_button.dart';
import '../widgets/transaction.dart';
import '../widgets/wallet_buttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              color: Colors.blue,
              height: 300,
              width: 500,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Column(
                    children: const [
                      BalanceWidget(),
                      SizedBox(
                        height: 15,
                      ),
                      WalletButtonsWidget(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 260,
            child: Container(
              height: 600,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          'Recent Transactions',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Spacer(),
                        Text(
                          'See all',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const ChoiceButtonWidget(),
                    const SizedBox(
                      height: 10,
                    ),
                    const TransactionWidget(
                      day: 'TODAY',
                      title: 'Grocery',
                      subtitle: 'Eataly growntown',
                      cost: '-60.68',
                      date: 'Aug 26',
                      title2: 'Transport',
                      subtitle2: 'UBER Pool',
                      cost2: '-6.00',
                      date2: 'Aug 26',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'YESTERDAY',
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text('Payment'),
                                        Text('Payment for Andre'),
                                      ],
                                    ),
                                    const Spacer(),
                                    Column(
                                      children: const [
                                        Text('+ 650.00'),
                                        Text('Aug 25'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 0.5),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TransactionWidget(
                      day: 'AUGUST 24',
                      title: 'Grocery',
                      subtitle: 'Eataly growntown',
                      cost: '-60.68',
                      date: 'Aug 24',
                      title2: 'Transport',
                      subtitle2: 'UBER Pool',
                      cost2: '-6.00',
                      date2: 'Aug 24',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
