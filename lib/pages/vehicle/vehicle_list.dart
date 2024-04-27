import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test/design/widgets/accent_button.dart';
import 'package:test/pages/vehicle/vehicle_item.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _list(context),
        Align(
          alignment: Alignment.bottomCenter,
          child: _updateButton(),
        ),
      ],
    );
  }

  Widget _list(BuildContext context) {
    final safeAreaPadding = MediaQuery.of(context).padding.bottom;
    final bottomPadding = (safeAreaPadding + 8) * 2 + 40;
    return ListView.separated(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
        bottom: bottomPadding,
      ),
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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8, left: 16, right: 16),
        child: AcentButton(
          title: "Update",
          onTap: () {},
        ),
      ),
    );
  }
}
