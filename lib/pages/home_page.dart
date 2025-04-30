import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? selectedPayment;
  String? selectedGender;
  String? selectRegion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Payment Method",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
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
              RadioListTile(
                value: "humo",
                groupValue: selectedPayment,
                onChanged: (value) {
                  selectedPayment = value;
                  setState(() {});
                },
                title: Text("Humo"),
              ),
              CupertinoButton(
                color: Colors.yellow,
                onPressed: () {
                  selectedPayment = null;
                  setState(() {});
                },
                child: Text("Unselect"),
              ),
              Divider(),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Select Region",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              RadioListTile(
                value: "tashkent",
                activeColor: Colors.red,
                selected: selectRegion == "tashkent",
                groupValue: selectRegion,
                onChanged: (value) {
                  selectRegion = value;
                  setState(() {});
                },
                title: Text("Tashkent"),
              ),
              RadioListTile(
                value: "samarkand",
                activeColor: Colors.red,
                selected: selectRegion == "samarkand",
                groupValue: selectRegion,
                onChanged: (value) {
                  selectRegion = value;
                  setState(() {});
                },
                title: Text("Samarkand"),
              ),
              RadioListTile(
                value: "fargana",
                activeColor: Colors.red,
                selected: selectRegion == "fargana",
                groupValue: selectRegion,
                onChanged: (value) {
                  selectRegion = value;
                  setState(() {});
                },
                title: Text("Fargana"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
