import 'package:flutter/material.dart';
import 'package:test/design/images.dart';

class VehicleItem extends StatelessWidget {
  const VehicleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: Card(
        margin: EdgeInsets.zero,
        color: Colors.white,
        elevation: 0.06,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 16),
            child: Row(
              children: [
                motorcycle,
                _title(),
                _state(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _title() {
    return Expanded(
      child: Padding(
          padding: const EdgeInsets.only(left: 6, right: 6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "BMW GS-7638 ",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              // if(false)
              // Text(
              //   "No Driver",
              // maxLines: 1,
              // overflow: TextOverflow.ellipsis,
              //   style: TextStyle(
              //     color: Colors.grey,
              //     fontSize: 14,
              //     fontWeight: FontWeight.w400,
              //   ),
              // ),
              // else
              RichText(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                text: const TextSpan(
                  style: TextStyle(fontSize: 14),
                  children: <TextSpan>[
                    TextSpan(
                        text: "Driver: ",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w400)),
                    TextSpan(
                        text: "Paul",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600)),
                  ],
                ),
              )
            ],
          )),
    );
  }

  Widget _state() {
    return InkWell(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.electric_car_outlined),
          Text(
            "pickup",
            style: TextStyle(
                color: Colors.black54,
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
