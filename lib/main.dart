import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //Pading general
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
      color: Colors.white,
      //Envolvemos la imagen en un center para poder cambiar el tamaño
      child: Center(
        //Container para crear una sombra a la imagen
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 80),
            ),
            Container(
              //Sombra de la imagen
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(blurRadius: 8),
                ],
              ),
              child: const Image(
                image: AssetImage('images/Cover.jpg'),
                width: 250,
              ),
            ),
            //EdgeInsets = Bordes internos
            const Padding(
              padding: EdgeInsets.only(top: 25),
            ),
            texto('The Last Uf Us', Colors.black87, 40),
            const Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            texto('Naugthy Dog', Colors.black54, 30),
            const Padding(
              padding: EdgeInsets.only(top: 15),
            ),
            texto(
                'La historia de The Last of Us gira en torno a un virus nacido por el hongo Cordyceps Unilateralis. Es decir, a diferencia de otros juegos, aquí la naturaleza da el brote que amenaza a la humanidad. Después de recibir esa información, nos transportamos 20 años en el futuro para ser Joel, el protagonista de la historia. Acompañado por Tess, debe vivir en un mundo que no es lo que conocemos.',
                Colors.black54,
                15),
            const Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: ElevatedButton(
                onPressed: () {
                  print('object');
                },
                child: const Text(
                  'Comprar',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text texto(String contenido, Color color, double size) {
    return Text(
      contenido,
      textDirection: TextDirection.ltr,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}
