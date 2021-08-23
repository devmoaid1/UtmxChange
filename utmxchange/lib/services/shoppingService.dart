import 'package:utm_x_change/models/shopping/shoppingModel.dart';
import 'package:utm_x_change/services/rest_service.dart';


class ShopDataService {

  static final ShopDataService _instance = ShopDataService._constructor();
  factory ShopDataService() {
    return _instance;
  }

  ShopDataService._constructor();
  final rest = RestService();

  Future deleteShop({String id}) async {
    await rest.delete('shops/$id');
  }

  Future<ShoppingCard> createShop({ShoppingCard shop}) async {
    final json = await rest.post('shops', data: shop);
    return ShoppingCard.fromJson(json);
  }

  Future<ShoppingCard> updateShop({String id, ShoppingCard shop}) async {
    final json = await rest.patch('shops/$id', data: shop);
    return ShoppingCard.fromJson(json);
  }

  Future<List<ShoppingCard>> getAllShops() async {
    final listJson = await rest.get('shops');

    return (listJson as List)
        .map((itemJson) => ShoppingCard.fromJson(itemJson))
        .toList();
  }
}
