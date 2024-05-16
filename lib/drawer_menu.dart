import 'package:flutter/material.dart';
import 'package:u2_act10_0312/main.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildDrawerHeader(),
          _buildDrawerItem(
              icon: Icons.shopping_basket,
              text: 'Formulario Productos',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.productos)}),
          _buildDrawerItem(
              icon: Icons.people,
              text: 'Formulario Clientes',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.inicio)}),
          _buildDrawerItem(
              icon: Icons.shopping_cart,
              text: 'Formulario Pedidos',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.pedidos)}),
          _buildDrawerItem(
              icon: Icons.work,
              text: 'Formulario detallespedido',
              onTap: () => {
                    Navigator.pushReplacementNamed(
                        context, MyApp.detallespedido)
                  }),
          _buildDrawerItem(
              icon: Icons.attach_money,
              text: 'Formulario Detalles venta',
              onTap: () => {
                    Navigator.pushReplacementNamed(context, MyApp.detallesventa)
                  }),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/fondo_drawer.jpg'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Anaya 0312",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _buildDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
