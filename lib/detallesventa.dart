import 'package:flutter/material.dart';
import 'package:u2_act10_0312/drawer_menu.dart';

class DetallesVenta extends StatelessWidget {
  static const String routeName = '/detallesventa';

  @override
  Widget build(BuildContext context) {
    var iddetallesventaController = TextEditingController();
    var categoriaController = TextEditingController();
    var cantidadController = TextEditingController();
    var descripcionController = TextEditingController();
    var imagenController = TextEditingController();
    var fechaController = TextEditingController();
    var actualizacionController = TextEditingController();
    var estadoController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Detalles de la venta",
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
                    buildTextField("ID Detalles Venta",
                        iddetallesventaController, Icons.shopping_cart),
                    buildTextField("Categoria:", categoriaController,
                        Icons.category_outlined),
                    buildTextField("Cantidad de productos:", cantidadController,
                        Icons.candlestick_chart),
                    buildTextField("Descripcion:", descripcionController,
                        Icons.description),
                    buildTextField("Imagen", imagenController, Icons.image),
                    buildTextField("Fecha creacion", fechaController,
                        Icons.calendar_month),
                    buildTextField("Actualizacion", actualizacionController,
                        Icons.access_time),
                    buildTextField(
                        "Estado", estadoController, Icons.broken_image),
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
                        String iddetallesventa = iddetallesventaController.text;
                        String categoria = categoriaController.text;
                        String cantidad = cantidadController.text;
                        String descripcion = descripcionController.text;
                        String imagen = imagenController.text;
                        String fecha = fechaController.text;
                        String actualizacion = actualizacionController.text;
                        String estado = estadoController.text;

                        print(
                            "Iddetallesventa: $iddetallesventa, categoria: $categoria, cantidad: $cantidad, descripcion: $descripcion, imagen: $imagen, fecha: $fecha, Fecha y Hora: $actualizacion, estado: $estado");
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
