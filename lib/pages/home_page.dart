import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? selectedPayment;
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              RadioListTile<String>(
                value: "cash",
                groupValue: selectedPayment,
                onChanged: (value) {
                  selectedPayment = value;
                  setState(() {});
                },
                title: Text("Cash"),
              ),
              RadioListTile(
                value: "uzcard",
                groupValue: selectedPayment,
                onChanged: (value) {
                  selectedPayment = value;
                  setState(() {});
                },
                title: Text("Uzcard"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
