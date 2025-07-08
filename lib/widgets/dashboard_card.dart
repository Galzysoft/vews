import 'package:flutter/material.dart';

import '../models/dashboard_model.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    super.key, required this.model,

  });

final DashBoardModel model;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadiusGeometry.circular(20),
      shadowColor: Colors.red,
      elevation: 3,
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image(
                height: 150,
                width: double.infinity,
                image: NetworkImage(model.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(model.name),
          Text(model.brand),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.only(left: 8.0, bottom: 4),
              padding: const EdgeInsets.all(4),
              child: Text(model.price),
            ),
          ),
        ],
      ),
    );
  }
}
