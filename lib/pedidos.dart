import 'package:flutter/material.dart';
import 'package:u2_act10_0312/drawer_menu.dart';

class Pedidos extends StatelessWidget {
  static const String routeName = '/pedidos';

  @override
  Widget build(BuildContext context) {
    var idPedidoController = TextEditingController();
    var idClienteController = TextEditingController();
    var fechaController = TextEditingController();
    var metodoPagoController = TextEditingController();
    var estadopedidoController = TextEditingController();
    var direccionController = TextEditingController();
    var totalController = TextEditingController();
    var observacionesController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Pedidos",
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
                    buildTextField(
                        "IdPedido", idPedidoController, Icons.numbers),
                    buildTextField(
                        "IdCliente", idClienteController, Icons.numbers),
                    buildTextField(
                        "Fecha", fechaController, Icons.calendar_today),
                    buildTextField(
                        "Total", totalController, Icons.attach_money),
                    buildTextField(
                        "Método de Pago", metodoPagoController, Icons.payment),
                    buildTextField(
                        "Dirección", direccionController, Icons.location_on),
                    buildTextField("Estado del pedido", estadopedidoController,
                        Icons.confirmation_number),
                    buildTextField("Observaciones", observacionesController,
                        Icons.remove_red_eye),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff000293),
                        onPrimary: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      onPressed: () {
                        String idPedido = idPedidoController.text;
                        String idCliente = idClienteController.text;
                        String fecha = fechaController.text;
                        String total = totalController.text;
                        String metodoPago = metodoPagoController.text;
                        String direccion = direccionController.text;
                        String estadopedido = estadopedidoController.text;

                        String observaciones = observacionesController.text;

                        print(
                            "IdPedido: $idPedido, IdCliente: $idCliente, Fecha: $fecha, Total: $total, Método de Pago: $metodoPago, Dirección: $direccion, Estado del pedido: $estadopedido, Observaciones: $observaciones");
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
            hintText: "Ingresa $labelText...",
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
