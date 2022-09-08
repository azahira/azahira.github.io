import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(const MaterialApp(
    title: accountsLabel,
    home: AccountsPage(),
  ));
}

class AccountsPage extends StatelessWidget {
  const AccountsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(accountsLabel),
        backgroundColor: appColor,
      ),
      body: const Center(
        child:  Text(accountsLabel),
      ),
    );
  }
}