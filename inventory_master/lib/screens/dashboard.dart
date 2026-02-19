import 'package:flutter/material.dart';
import 'retail_inventory.dart';
import 'box_inventory.dart';
import 'sales.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            _card(context, 'Retail Inventory', RetailInventoryPage()),
            _card(context, 'Box Inventory', BoxInventoryPage()),
            _card(context, 'Sales', SalesPage()),
            _card(context, 'Reports', null),
          ],
        ),
      ),
    );
  }

  Widget _card(BuildContext context, String title, Widget? page) {
    return GestureDetector(
      onTap: () {
        if (page != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => page),
          );
        }
      },
      child: Card(
        elevation: 4,
        child: Center(
          child: Text(title, textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
