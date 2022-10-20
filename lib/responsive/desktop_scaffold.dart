import 'package:flutter/material.dart';
import 'package:responsive_dashboard_v0/constants.dart';
import 'package:responsive_dashboard_v0/util/my_box.dart';
import 'package:responsive_dashboard_v0/util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  final ScrollController _firstController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      body: Row(
        children: [
          // abrir drawer
          myDrawer,
          // demas elementos del body
          Expanded(
            flex: 3,
            child: Column(children: [
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
            ]),
          ),
          Expanded(
            child: Column(
              children: const [
                Expanded(
                  child: (Image(
                    image: NetworkImage(
                        'https://image.shutterstock.com/image-photo/cute-siberian-kitten-sitting-on-260nw-1303883023.jpg'),
                  )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
