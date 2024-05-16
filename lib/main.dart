import 'package:u2_act10_0312/productos.dart';
import 'package:u2_act10_0312/detallesventa.dart';
import 'package:u2_act10_0312/pedidos.dart';
import 'package:flutter/material.dart';
import 'package:u2_act10_0312/detallespedido.dart';
import 'inicio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String inicio = Inicio.routeName;
  static const String pedidos = Pedidos.routeName;
  static const String detallespedido = DetallesPedido.routeName;
  static const String productos = Productos.routeName;
  static const String detallesventa = DetallesVenta.routeName;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drawer menu',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        inicio: (context) => Inicio(),
        pedidos: (context) => Pedidos(),
        detallespedido: (context) => DetallesPedido(),
        productos: (context) => Productos(),
        detallesventa: (context) => DetallesVenta(),
      },
      home: Inicio(),
    );
  }
}
