import 'package:flutter/material.dart';
import 'package:u2_act10_0312/drawer_menu.dart';

class Productos extends StatelessWidget {
  static const String routeName = '/productos';

  @override
  Widget build(BuildContext context) {
    var idProductoController = TextEditingController();
    var nombreController = TextEditingController();
    var precioController = TextEditingController();
    var descripcionController = TextEditingController();
    var cantidadController = TextEditingController();
    var tamanoController = TextEditingController();
    var pesoController = TextEditingController();
    var fechaController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Productos",
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
                    buildTextField("ID del producto:", idProductoController,
                        Icons.perm_identity),

                    buildTextField("Nombre:", nombreController, Icons.title),

                    buildTextField(
                        "Precio:", precioController, Icons.attach_money),

                    buildTextField("Descripción:", descripcionController,
                        Icons.description),

                    buildTextField(
                        "Cantidad:", cantidadController, Icons.storage),

                    buildTextField("Tamaño:", tamanoController,
                        Icons.photo_size_select_actual),

                    // Imagen
                    buildTextField("Peso:", pesoController, Icons.line_weight),

                    // Tamaño
                    buildTextField("Fecha de lanzamiento:", fechaController,
                        Icons.calendar_month),

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
                        String idProducto = idProductoController.text;
                        String nombre = nombreController.text;
                        String precio = precioController.text;
                        String descripcion = descripcionController.text;
                        String cantidad = cantidadController.text;
                        String tamano = tamanoController.text;
                        String peso = pesoController.text;
                        String fecha = fechaController.text;

                        print(
                            "IdProducto: $idProducto, Nombre: $nombre,  Precio: $precio, Descripción: $descripcion, cantidad: $cantidad, fecha: : $fecha, tamano: $tamano, peso: $peso");
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
