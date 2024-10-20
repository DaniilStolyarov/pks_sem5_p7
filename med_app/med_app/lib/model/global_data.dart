import "package:med_app/model/cart_item.dart";
import "package:med_app/model/service.dart";
import "../pages/cart.dart";
class GlobalData {
  List<Service> services = [
    Service(
        "ПЦР-тест на определение РНК коронавируса стандартный", 1800, "2 дня"),
    Service("Клинический анализ крови с лейкоцитарной формулировкой", 690,
        "1 день"),
    Service("Биохимический анализ крови, базовый", 2440, "1 день"),
  ];

  List<CartItem> cartItems = [];
  CartPageState? cartState;
  GlobalData() {
    cartItems.addAll([CartItem(services[1], 1), CartItem(services[0], 1)]);
  }
}
