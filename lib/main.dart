import 'package:flutter/material.dart';
import 'page_liste_produits.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Atelier Produits",
      home: ListProduits(),
    );
  }
}
