import '../helper/api.dart';
import '../models/product_model.dart';

class CategoriesService {
  getCategories() {
    Future<List<ProductModel>> getCategoriesProducts(
        {required String categoryName}) async {
      List<dynamic> data = await Api().get(
          url: 'https://fakestoreapi.com/products/category/$categoryName',
          token: '');
      List<ProductModel> products = [];
      for (var element in data) {
        products.add(ProductModel.fromJson(element));
      }
      return products;
    }
  }
}
