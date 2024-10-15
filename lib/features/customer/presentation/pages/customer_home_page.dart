import 'package:flutter/material.dart';

class CustomerHomePage extends StatelessWidget {
  const CustomerHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Home Page'),
      ),
      body: const Center(
        child: Text('Customer Home Page', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
