import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Metodo 1 per la selezione dei colori: utilizzo di un colore predefinito con una tonalità specifica.
        backgroundColor: Colors.purple.shade800,
        title: Text(
          "Navbar",
          style: TextStyle(
            // Metodo 2 per la selezione dei colori: utilizzo di un colore predefinito con una tonalità specifica.
            color: Colors.blue[100],
          ),
        ),
      ),
      body: Center(child: body()),
    );
  }

  Widget body() => Column(
    // Imposta mainAxisAlignment su MainAxisAlignment.center per centrare i figli lungo l'asse verticale.
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text('Selezione colori normali',
          style: TextStyle(
            // Metodo 3 per la selezione dei colori: utilizzo di un colore predefinito.
            color: Colors.blue,
            fontSize: 30
          )),
      Text('Selezione colori shade',
          style: TextStyle(
            // Metodo 4 per la selezione dei colori: utilizzo di un colore predefinito con una tonalità specifica.
            color: Colors.blue[100],
            fontSize: 30
          )),
      Text('Colore con rgb ed opacità',
          style: TextStyle(
            // Metodo 5 per la selezione dei colori: utilizzo del metodo Color.fromARGB per creare un colore specificando i valori Alpha, Red, Green e Blue.
            color: Color.fromARGB(125, 0, 0, 255),
            fontSize: 30
          )),
      Text('Colore con rgb hex',
          style: TextStyle(
            // Metodo 6 per la selezione dei colori: utilizzo del metodo Color per creare un colore specificando un valore esadecimale.
            color: Color(0xFF0000FF),
            fontSize: 30
          )),
    ],
  );
}
