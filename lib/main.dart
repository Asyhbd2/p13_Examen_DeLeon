import 'package:flutter/material.dart';

void main() => runApp(const MiContainer());

class Producto {
  final int productoID;
  final String nombre;
  final String descripcion;

  Producto({
    required this.productoID,
    required this.nombre,
    required this.descripcion,
  });
}

class MiContainer extends StatelessWidget {
  const MiContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Lista de productos
    List<Producto> productos = [
      Producto(
          productoID: 1, nombre: "Cheesecake", descripcion: "Un cheesecake"),
      Producto(
          productoID: 2, nombre: "Cupcake", descripcion: "Cupcake de fresa"),
      Producto(
          productoID: 3, nombre: "Vela", descripcion: "Vela para decoracion"),
      Producto(
          productoID: 4,
          nombre: "Globo de pastel",
          descripcion: "Globo para decoracion"),
    ];

    // Mapping del contenido
    List<Widget> contenido = productos.map((producto) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("ID: ${producto.productoID}",
              style: const TextStyle(color: Colors.white)),
          Text("Nombre: ${producto.nombre}",
              style: const TextStyle(color: Colors.white)),
          Text("Descripción: ${producto.descripcion}",
              style: const TextStyle(color: Colors.white)),
        ],
      );
    }).toList();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Productos De Leon 1165"),
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 25),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xff6ebfff),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: contenido[0], // Usamos el primer item del map
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xff6fb471),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: contenido[1], // Usamos el segundo item del map
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xffffc05e),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: contenido[2], // Usamos el tercer item del map
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xffe493f2),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: contenido[3], // Usamos el cuarto item del map
              ),
            ],
          ),
        ),
      ),
    );
  }
}
