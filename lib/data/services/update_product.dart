import 'package:store_app/data/helper/api.dart';

import '../models/product_model.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct({
    required String title,
    required String price,
    required String desc,
    required String category,
    required String image,
    required id,
  }) async {
    Map<String, dynamic> data = await Api().put(
      url: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price,
        'description': desc,
        'category': category,
        'image': image,
      },
      token: '',
    );
    return ProductModel.fromJson(data);
  }
}
