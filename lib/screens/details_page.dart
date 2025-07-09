import 'package:flutter/material.dart';
import 'package:vews/models/dashboard_model.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key, required this.model});

  final DashBoardModel model;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(widget.model.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.only(
                bottomRight: Radius.elliptical(300, 100),
                bottomLeft: Radius.elliptical(300, 100),
              ),
              child: Container(
                foregroundDecoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.5),
                  gradient: RadialGradient(
                    colors: [
                      Colors.black.withValues(alpha: 0.1),
                      Colors.black.withValues(alpha: 0.5),
                      Colors.black.withValues(alpha: 0.1),
                      Colors.red.withValues(alpha: 0.5),
                    ],
                  ),
                ),
                child: Image.network(
                  widget.model.image,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(widget.model.brand)
          ],
        ),
      ),
    );
  }
}
