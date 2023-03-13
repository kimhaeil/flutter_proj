import 'package:flutter/material.dart';
import 'package:toonflix/Widget/button.dart';

import 'Widget/corrency_card.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Hey, Selena',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 120,
              ),
              Text(
                'Total balance',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '\$5 111,222,444,',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Button(
                      text: 'Trasfer',
                      bgcolor: Color(0xFFF1B33B),
                      textColor: Colors.black),
                  Button(
                      text: 'Request',
                      bgcolor: Color(0xFF1F2123),
                      textColor: Colors.white)
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Wallets',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CorrencyCard(
                name: 'Euro',
                code: 'EUR',
                amount: '5 2234',
                icon: Icons.euro_rounded,
                isInverted: false,
                dx: 0,
                dy: 0,
              ),
              const CorrencyCard(
                name: 'BitCoin',
                code: 'Bit',
                amount: '123 455',
                icon: Icons.currency_bitcoin,
                isInverted: true,
                dx: 0,
                dy: -30,
              ),
              const CorrencyCard(
                name: 'Dollar',
                code: 'USD',
                amount: '4 467',
                icon: Icons.money_off_csred_rounded,
                isInverted: false,
                dx: 0,
                dy: -50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
