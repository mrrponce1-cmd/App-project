import 'package:flutter/material.dart';

class RetailInventoryPage extends StatelessWidget {
  const RetailInventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Retail Inventory')),
      body: Center(child: Text('Retail items here')),
    );
  }
}
