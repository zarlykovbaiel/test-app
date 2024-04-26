import 'package:flutter/material.dart';
import 'package:test/design/demensions.dart';
import 'package:test/pages/vehicle/vehicle_list.dart';

class VehiclePage extends StatelessWidget {
  const VehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Dispatcher by Kiparo.com",
          style: TextStyle(
              color: const Color(0xffFF8E1F),
              fontSize: fontSize16,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        color: const Color(0xffF2F2F2),
        child: VehicleList(),
      ),
    );
  }
}
