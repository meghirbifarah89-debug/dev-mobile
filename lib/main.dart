import 'package:flutter/material.dart';

void main() {
  runApp(const CarteEtudiant());
}

class CarteEtudiant extends StatelessWidget {
  const CarteEtudiant({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carte Étudiant',
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('Carte Étudiant'),
          backgroundColor: Colors.teal,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Colonne gauche : photo
                  const CircleAvatar(
                    radius: 45,
                    backgroundImage: NetworkImage('https://picsum.photos/150'),
                  ),
                  const SizedBox(width: 16),

                  // Colonne droite : informations
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Mariem Daly',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Spécialité : E-Business',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[700],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          '🎯 Objectif :',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Motivée pour devenir développeuse mobile Flutter.',
                          style: TextStyle(fontSize: 14),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          '📧 Email : mariem.daly@gmail.com',
                          style: TextStyle(fontSize: 13),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          '📱 Téléphone : +216 20 123 456',
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}