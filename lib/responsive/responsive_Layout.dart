import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {Key? key, required this.mobileScaffold, required this.tabletScaffold, required this.desktopScaffold})
      : super(key: key);
  final Widget mobileScaffold; //ajusta el tamaño a dispositivos moviles
  final Widget tabletScaffold; //ajusta el tamaño a tabletas
  final Widget desktopScaffold; //ajusta el tamaño a maquinas de escritorio

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 700) {
          return mobileScaffold;
        } else if (constraints.maxWidth < 1100) {
          return tabletScaffold;
        } else {
          return desktopScaffold;
        }
      },
    );
  }
}