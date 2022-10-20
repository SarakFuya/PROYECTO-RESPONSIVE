import 'package:flutter/material.dart';
import 'package:responsive_dashboard_v0/constants.dart';
import 'package:responsive_dashboard_v0/util/my_box.dart';
import 'package:responsive_dashboard_v0/util/my_tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  final ScrollController _firstController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      drawer: myDrawer,
      body: Column(
        children: [
          //4 cajas en la parte superior
          AspectRatio(
            // utilizar para no definir valores fijos de width y height
            aspectRatio: 3.5, // width y height tienen igual valor (cuadrados)
            child: SizedBox(
              width: double.infinity,
              child: ListView.builder(
                  itemCount: 1, //mostramos 4 cajas
                  itemBuilder: (context, index) {
                    return const MyBox();
                  }),
            ),
          ),
          // Mosaico para completar el cuerpo
          Expanded(
              child: lista,
              )
        ],
      ),
    );
  }
}
