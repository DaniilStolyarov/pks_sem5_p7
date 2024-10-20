import 'package:med_app/model/service.dart';

class CartItem {
  CartItem(this.item, this.patientCount);
  Service item;
  int patientCount = 1;
}