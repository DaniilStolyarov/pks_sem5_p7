import 'package:flutter/material.dart';
import 'package:med_app/main.dart';
import 'package:med_app/model/cart_item.dart';

class ServiceItem extends StatelessWidget {
  ServiceItem({
    super.key,
    required this.serviceIndex
  });
  int serviceIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          left: 27.5, top: 0, right: 27.5, bottom: 16),
      padding: const EdgeInsets.all(14.0),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFE0E0E0), width: 1.0),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
      child: Column(
        children: [
          Text(
            appData.services[serviceIndex].name,
            style: const TextStyle(
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w400,
                fontSize: 16,
                letterSpacing: -0.32,
                height: 20 / 16),
          ),
          const SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(appData.services[serviceIndex].daysIntervalText, 
                  style: const TextStyle(
                    color: Color(0xFF939396),
                    fontFamily: "Montserrat",
                    fontSize: 14,
                    height: 20/14,
                    fontWeight: FontWeight.w400
                  ),),
                  const SizedBox(height: 4,),
                  Text("${appData.services[serviceIndex].price.toString()} ₽",
                  style: const TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 17,
                    height: 24/17,
                    fontWeight: FontWeight.w400,
                  ),)
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: ElevatedButton(
                  onPressed: () {
                    appData.cartItems.add(CartItem(appData.services[serviceIndex], 1));
                    if (appData.cartState != null)
                    {
                      appData.cartState!.forceUpdateState();
                    }
                  },
                  
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1A6FEE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12.5)
                  ),
                  child: const Text(
                    "Добавить",
                    style: TextStyle(color: Color(0XFFFFFFFF),
                    fontFamily: "Montserrat",
                    fontSize: 14,
                    height: 20/14,
                    fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
