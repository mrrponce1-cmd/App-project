import 'package:flutter/material.dart';

class BoxInventoryPage extends StatelessWidget {
  const BoxInventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Box Inventory')),
      body: Center(child: Text('Box items here')),
    );
  }
}
