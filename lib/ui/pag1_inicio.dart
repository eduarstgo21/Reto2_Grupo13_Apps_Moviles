import 'package:flutter/material.dart';

class pag1_inicio extends StatefulWidget {
  const pag1_inicio({super.key});

  @override
  State<pag1_inicio> createState() => _pag1_inicioState();
}

class _pag1_inicioState extends State<pag1_inicio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image(
            image: NetworkImage(
                "https://www.creativefabrica.com/wp-content/uploads/2019/02/Online-shop-shopping-shop-logo-by-DEEMKA-STUDIO-1-580x406.jpg")),
      ),
    );
  }
}
