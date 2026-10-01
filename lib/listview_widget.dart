import 'package:flutter/material.dart';
import 'package:test_pam/product_widget.dart';
import 'package:test_pam/round_button_widget.dart';

import 'models/product.dart';

class ListviewWidget extends StatefulWidget {
  const ListviewWidget({super.key});

  @override
  State<ListviewWidget> createState() => _ListviewWidgetState();
}



class _ListviewWidgetState extends State<ListviewWidget> {
  List<Product> products = [Product(title: 'Produs1', price: 100.5), Product(title: 'Produs2', price: 1.5)];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoundButtonWidget(
          title: 'Adauga',
          onTap: () {
            setState(() {
              products.add(Product(title: 'Produs XXX', price: 89));
            });
          },
        ),
        SizedBox(height: 20),
        RoundButtonWidget(
          title: 'Sterge',
          onTap: () {
            setState(() {
              products.removeAt(0);
            });
          },
        ),
        Expanded(
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              var product = products[index];
              return ProductWidget(
                title: product.title,
                price: product.price,
                isFavorite: product.isFavorite,
                onFavorite: () {
                  setState(() {
                    products[index].isFavorite = !products[index].isFavorite;
                  });
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
