import 'package:flutter/material.dart';
import 'package:test/pages/vehicle/vehicle_item.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _list(),
        _updateButton(),
      ],
    );
  }

  Widget _list() {
    return ListView.separated(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      itemCount: 15,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 8,
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return const VehicleItem();
      },
    );
  }

  Widget _updateButton() {
    return Container();
  }
}
