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
    return Scaffold(
      appBar: AppBar(title: Text("Liste de Produits")),
      body: ListView.builder(itemCount: produits.length, itemBuilder: (context, index) {
        final produit = produits[index];
        return Card(
          elevation: 3,
          margin: EdgeInsets.all(10),
          child: ListTile(title: Text(produit.nom, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          subtitle: Text("${produit.prix} \$"), 
          trailing: ElevatedButton(onPressed:() {
            //navigation vers la page Details
            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsProduit(produit: produit)),
            );
          }, child: Text("Voir")
          ),
        ),
        );
      },
      ),
    );
  }
}