import 'package:flutter/material.dart';
import 'package:u2_act10_0312/drawer_menu.dart';

class Inicio extends StatelessWidget {
  static const String routeName = '/inicio';

  @override
  Widget build(BuildContext context) {
    var idClienteController = TextEditingController();
    var nombreController = TextEditingController();
    var apellidoController = TextEditingController();
    var direccionController = TextEditingController();
    var estadoController = TextEditingController();
    var codigopostalController = TextEditingController();
    var ciudadController = TextEditingController();
    var correoController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Clientes",
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
                    buildTextField("ID", idClienteController, Icons.place),
                    buildTextField("Nombre", nombreController, Icons.person),
                    buildTextField(
                        "Apellido", apellidoController, Icons.person),
                    buildTextField(
                        "Direccion", direccionController, Icons.home),
                    buildTextField(
                        "Estado", estadoController, Icons.location_on),
                    buildTextField("Codigo postal", codigopostalController,
                        Icons.location_on),
                    buildTextField(
                        "Ciudad", ciudadController, Icons.location_on),
                    buildTextField("Correo", correoController, Icons.mail),
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
                        String idCliente = idClienteController.text;
                        String nombre = nombreController.text;
                        String apellido = apellidoController.text;
                        String direccion = direccionController.text;
                        String estado = estadoController.text;
                        String codigopostal = codigopostalController.text;
                        String ciudad = ciudadController.text;
                        String correo = correoController.text;

                        print(
                            "IdCliente: $idCliente, Nombre: $nombre, Apellido: $apellido, Direccion: $direccion, Estado: $estado, CodigoPostal: $codigopostal, Ciudad: $ciudad, Correo: $correo");
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
