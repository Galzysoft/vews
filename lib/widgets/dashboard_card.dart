import 'package:flutter/material.dart';
import 'package:vews/screens/details_page.dart';

import '../models/dashboard_model.dart';

class DashboardCard extends StatefulWidget {
  const DashboardCard({
    super.key, required this.model,

  });

  final DashBoardModel model;

  @override
  State<DashboardCard> createState() => _DashboardCardState();
}

class _DashboardCardState extends State<DashboardCard> {

bool isHovered=false;


  @override
  Widget build(BuildContext context) {


    ///  variable declearlation = condition? true value : else value

    return Material(
    color:isHovered?Colors.green:Colors.deepOrange,
      borderRadius: BorderRadiusGeometry.circular(isHovered?50:20),
      shadowColor: Colors.red,
      elevation: 3,
      child: InkWell(
        onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailsPage(model:widget.model ,),));
      },onHover: (value) {
        print("am hovered $value");
        setState(() {
          isHovered=value;
        });
      },
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
                  image: NetworkImage(widget.model.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(widget.model.name),
            Text(widget.model.brand),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                ),
                margin:  EdgeInsets.only(left:isHovered?20.0:8, bottom: 4),
                padding: const EdgeInsets.all(4),
                child: Text(widget.model.price),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
