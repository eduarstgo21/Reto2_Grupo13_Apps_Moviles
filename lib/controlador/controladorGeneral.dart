import 'package:get/get.dart';
import 'package:reto2/clases/productos.dart';

class controladorGeneral extends GetxController {
  final _posicionPagina = 0.obs;
  final pro = <productos>[].obs;
  @override
  void onInit() {
    pro.add(productos(
        1,
        "Tennis Polo",
        "https://static.dafiti.com.co/p/royal-county-of-berkshire-polo-club-6022-2760021-1-zoom.jpg",
        0,
        120000));
    pro.add(productos(
        2,
        "Tennis Tallenzi",
        "https://static.dafiti.com.co/p/tellenzi-0891-3161302-1-zoom.jpg",
        0,
        210000));
    pro.add(productos(
        3,
        "Tennis Adidas",
        "https://static.dafiti.com.co/p/adidas-performance-8301-2172251-1-zoom.jpg",
        0,
        185000));
    pro.add(productos(
        4,
        "Tennis Tommy",
        "https://static.dafiti.com.co/p/tommy-hilfiger-9770-3902502-1-zoom.jpg",
        0,
        360000));
    pro.add(productos(
        5,
        "Sketcher",
        "https://static.dafiti.com.co/p/skechers-4338-8646691-1-zoom.jpg",
        0,
        173000));

    // TODO: implement onInit
    super.onInit();
  }

  void cambiarposicion(int x) {
    _posicionPagina.value = x;
  }

  int get posicionPagina => _posicionPagina.value;

  void cambiarCantidad(int posicion, int valor) {
    print(
        "posicion = " + posicion.toString() + " | valor = " + valor.toString());
    pro[posicion].cantidad = valor;
  }

  int calcularTotal() {
    int total = 0;
    for (int i = 0; i < pro.length; i++) {
      total = total + pro[i].cantidad * pro[i].precio;
    }

    return total;
  }

  void limpiartodo() {
    for (int i = 0; i < pro.length; i++) {
      pro[i].cantidad = 0;
    }
    calcularTotal();
  }
}
