import 'package:flutter/material.dart';
import 'package:vews/models/dashboard_model.dart';

import '../widgets/dashboard_card.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<DashBoardModel> dashboardLists = [
    DashBoardModel(
      name: 'Aboki',
      image:
      'https://th.bing.com/th/id/OIP.1vQ5RMLRR5U3x_s2PUnPbgHaEK?rs=1&pid=ImgDetMain',
      brand: 'Azubike',
      price: '2000',
    ),
    DashBoardModel(
      name: 'ball',
      image:
      'https://www.creativefabrica.com/wp-content/uploads/2023/05/11/Modern-colourful-abstract-background-Graphics-69439498-1.jpg',
      brand: 'fifa',
      price: '100',
    ),
    DashBoardModel(
      name: 'emma',
      image:
      'https://www.creativefabrica.com/wp-content/uploads/2023/05/11/Modern-colourful-abstract-background-Graphics-69439498-1.jpg',
      brand: 'fifa',
      price: '100',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Center(child: Text("Odogwu", style: TextStyle(color: Colors.white))),
      ),

      /// to display the elements or widgets in a Grid format
      body: GridView.builder(
        padding: EdgeInsets.all(8),
        itemCount:dashboardLists.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemBuilder: (context, index) =>
            DashboardCard(
                model: dashboardLists[index]
            ),
      ),
    );
  }
}
