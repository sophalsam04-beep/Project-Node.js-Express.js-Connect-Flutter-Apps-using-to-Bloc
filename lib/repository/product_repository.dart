import 'package:self_learn19/model/product.dart';
import 'package:self_learn19/model/product.dart';
import '../services/api_service.dart';

class ProductRepository {
  final ApiService apiService = ApiService();

  Future<List<Product>> getProducts() async {
    final data = await apiService.getProducts();

    return data.map<Product>((e) => Product.fromJson(e)).toList();
  }
}
