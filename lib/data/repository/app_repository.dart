import 'package:uzum_market_demo/data/api_services/product_service.dart';

class AppRepository {
 static Future<List?> getProductByCategoryFromApi(String category) async =>
      await getProductsByCategory(category);
}
