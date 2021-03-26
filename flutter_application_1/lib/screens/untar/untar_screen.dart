import 'package:flutter/material.dart';

import 'components/body.dart';

class BankUntarScreen extends StatelessWidget {
  static String routeName = "/bank_untar";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transfer"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
