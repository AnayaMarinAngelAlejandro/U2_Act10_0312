import 'package:flutter/material.dart';
import 'package:u2_act10_0312/drawer_menu.dart';

class DetallesPedido extends StatelessWidget {
  static const String routeName = '/detallespedido';

  @override
  Widget build(BuildContext context) {
    var iddetallespedidoController = TextEditingController();
    var idpedidoController = TextEditingController();
    var idproductoController = TextEditingController();
    var unidadesController = TextEditingController();
    var preciounitarioController = TextEditingController();
    var descuentoController = TextEditingController();
    var subtotalController = TextEditingController();
    var comentariosController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Detalle de pedidos",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xffe12828),
      ),
      drawer: DrawerMenu(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              Container(
                width: 320,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildTextField("ID detalles pedido",
                        iddetallespedidoController, Icons.person),

                    buildTextField(
                        "ID del pedido", idpedidoController, Icons.shop),

                    buildTextField(
                        "ID producto", idproductoController, Icons.article),

                    buildTextField(
                        "Unidades", unidadesController, Icons.ac_unit),

                    buildTextField("Precio unitario", preciounitarioController,
                        Icons.price_change),

                    // descuento
                    buildTextField(
                        "Descuento", descuentoController, Icons.percent),

                    // subtotal
                    buildTextField("Subtotal", subtotalController, Icons.money),

                    // comentarios
                    buildTextField(
                        "Comentarios", comentariosController, Icons.comment),

                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffe12828),
                        onPrimary: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      onPressed: () {
                        String iddetallespedido =
                            iddetallespedidoController.text;
                        String idpedido = idpedidoController.text;
                        String idproducto = idproductoController.text;
                        String unidades = unidadesController.text;
                        String preciounitario = preciounitarioController.text;
                        String descuento = descuentoController.text;
                        String subtotal = subtotalController.text;
                        String comentarios = comentariosController.text;

                        print(
                            "Iddetallespedido: $iddetallespedido, idpedido: $idpedido, idproducto: $idproducto, unidades: $unidades, preciounitario: $preciounitario, descuento: $descuento, subtotal: $subtotal, comentarios: $comentarios");
                      },
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Text(
                          "Imprimir Resultados en la Consola",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, TextEditingController controller, IconData icon,
      {bool obscureText = false}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              labelText,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: "$labelText",
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11),
              borderSide: BorderSide(
                color: Color(0xffe12828),
                width: 2,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11),
              borderSide: BorderSide(
                color: Color(0xffe12828),
                width: 2,
              ),
            ),
            prefixIcon: Icon(
              icon,
              color: Color(0xffe12828),
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
