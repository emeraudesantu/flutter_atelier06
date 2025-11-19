import 'package:flutter/material.dart';
import 'lib/models/produit.dart';
import 'page_details_produit.dart';

class ListProduits extends StatelessWidget {
  ListProduits({super.key});

final List<Produit> produits = [
  Produit(nom: "Ordinateur", description: "Laptop", prix: 120.00),
  Produit(nom: "Smartphone", description: "Telephone nouvelle generation avec triple camera", prix: 900.0), 
  Produit(nom: "Casque Bluetooth", description: "Casque sans fil avec resuction", prix: 150.0),
];
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}