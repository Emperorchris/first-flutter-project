// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:first_project/widgets/circle_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 280,
              color: Color.fromARGB(255, 8, 31, 163),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    '\$27,812.34',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleIcons(
                        icon: Icons.call_received,
                        label: 'Received',
                      ),
                      CircleIcons(
                        icon: Icons.arrow_forward,
                        label: 'Send',
                      ),
                      CircleIcons(
                        icon: Icons.currency_exchange_sharp,
                        label: 'Exchange',
                      ),
                      CircleIcons(
                        icon: Icons.currency_bitcoin,
                        label: 'Cash Out',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'My Wallets',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Empty Wallets',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 45,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 20),
                  _buildWalletItem('BTC', '\$13,894.12', '0.028195', '4.52%'),
                  const Divider(
                    height: 45,
                    color: Colors.grey,
                  ),
                  _buildWalletItem('ETH', '\$11,894.12', '2.29', '1.56%'),
                ],
              ),
            ),
            SizedBox(height: 18),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'Buy Crypto',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Sell Crypto',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 45,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 20),
                  _buildDropdownButton(),
                  SizedBox(
                    height: 35,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 14, 21, 165)),
                      fixedSize: MaterialStateProperty.all(Size(300, 50)),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Proceed',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWalletItem(
      String label, String amount, String value, String percent) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 55,
                  width: 55,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepOrange,
                  ),
                ),
                Text(
                  label,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(width: 25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  amount,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
        Text(
          percent,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildDropdownButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Crypto'),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 40,
              width: 150, // Adjust the width as needed
              child: DropdownButtonFormField<String>(
                value: 'BTC',
                onChanged: (String? newValue) {},
                items: <String>['BTC', 'ETH', 'LTC', 'XRP']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onSaved: (String? newValue) {},
              ),
            ),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('To'),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 40,
              width: 150, // Adjust the width as needed
              child: DropdownButtonFormField<String>(
                value: '0e84882Gb',
                onChanged: (String? newValue) {},
                items: <String>[
                  '0e84882Gb',
                  '009B98sHTD',
                  '9909NIN8si9',
                  '89w8898W89'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onSaved: (String? newValue) {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}
