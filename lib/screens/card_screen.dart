import 'package:flutter/material.dart';
import 'package:lab_cards/widgets/custom_card_1.dart';
import 'package:lab_cards/widgets/custom_card_2.dart';
import 'package:lab_cards/widgets/custom_card_3.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: const [
          CustomCard1(),
          SizedBox(height: 10),
          CustomCard2(),
          SizedBox(height: 10),
          CustomCard3(),
        ],
      ),
    );
  }
}