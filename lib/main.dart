import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      //Envolvemos la imagen en un center para poder cambiar el tamaño
      child: Center(
        //Container para crear una sombra a la imagen
        child: Column(
          children: [
            Container(
              //Sombra de la imagen
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(blurRadius: 8),
                ],
              ),
              child: const Image(
                image: AssetImage('images/Cover.jpg'),
                width: 300,
              ),
            ),
            const Text(
              'The Last Uf Us',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 40,
              ),
            ),
            const Text(
              'Naugthy Dog',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 30,
              ),
            ),
            const Text(
              'La historia de The Last of Us gira en torno a un virus nacido por el hongo Cordyceps Unilateralis. Es decir, a diferencia de otros juegos, aquí la naturaleza da el brote que amenaza a la humanidad. Después de recibir esa información, nos transportamos 20 años en el futuro para ser Joel, el protagonista de la historia. Acompañado por Tess, debe vivir en un mundo que no es lo que conocemos.',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
              ),
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
}
