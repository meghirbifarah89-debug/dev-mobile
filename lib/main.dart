import 'package:flutter/material.dart';

void main() {
  runApp(MaCarteEtudiant());
}

class MaCarteEtudiant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue[50],
        appBar: AppBar(
          title: Text('Carte Etudiant'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Utilisation de l'image locale
              Image.asset(
                'assets/image.jpg',
                width: 150,
              ),
              SizedBox(height: 20),

              Text(
                'Nom: Yathreb dellai\nSpécialité : E Business\nEcole : ESSECT',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}