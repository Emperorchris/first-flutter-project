// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 230, 230),
      appBar: AppBar(
        title: Text(
          'History',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 5, 10, 118),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Stack(
                clipBehavior: Clip.antiAlias,
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    width: double.infinity,
                    color: Color.fromARGB(255, 5, 10, 118),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _headTextBuilder('All', Colors.white),
                        SizedBox(
                          width: 30,
                        ),
                        _headTextBuilder('BTC', Colors.grey),
                        SizedBox(
                          width: 30,
                        ),
                        _headTextBuilder('ETH', Colors.grey),
                        SizedBox(
                          width: 30,
                        ),
                        _headTextBuilder('XRP', Colors.grey),
                      ],
                    ),
                  ),
                  // Positioned(
                  //   bottom: 5,
                  //   child: Container(
                  //     color: Colors.red,
                  //     height: 100,
                  //     width: 250,
                  //     child: Row(),
                  //   ),
                  // )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(25),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Export History',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(),
                        ),
                        child: Icon(
                          Icons.search,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Today, 10 April',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _transactRecord('-0.95 LTC', '\$60', '19:53', 'LTC'),
                  SizedBox(
                    height: 45,
                  ),
                  _transactRecord('-0.0.04 BTC', '\$60', '19:53', 'BTC'),
                  SizedBox(
                    height: 45,
                  ),
                  _transactRecord('-0.09832 ETH', '\$60', '19:53', 'ETH'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(25),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '13 March',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _transactRecord('-0.95 LTC', '\$60', '19:53', 'LTC'),
                  SizedBox(
                    height: 45,
                  ),
                  _transactRecord('-0.0.04 BTC', '\$60', '19:53', 'BTC'),
                  SizedBox(
                    height: 45,
                  ),
                  _transactRecord('-0.09832 ETH', '\$60', '19:53', 'ETH'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _transactRecord(String label, String amount, String time, String title) {
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
                title,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
          const SizedBox(width: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                time,
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
        amount,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}

Widget _headTextBuilder(String text, Color color) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  );
}
