import 'package:flutter/material.dart';
import '../models/product.dart';
import '../services/api.dart';

class ProductViewModel extends ChangeNotifier {
  List<Product> _products = [];
  bool _loading = false;

  List<Product> get products => _products;
  bool get loading => _loading;

  Future<void> fetchProducts() async {
    _loading = true;
    notifyListeners();

    try {
      _products = await ApiService().fetchProducts();
    } catch (e) {
      // Gérer l'erreur ici
      print('Error fetching products: $e');
    } finally {
      _loading = false;
      notifyListeners();
    }
  }
}