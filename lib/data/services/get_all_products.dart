import '../helper/api.dart';
import '../models/product_model.dart';

class GetAllProducts {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products', token: '');

    List<ProductModel> products = [];
    for (var element in data) {
      products.add(ProductModel.fromJson(element));
    }
    return products;
  }
}
