import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:med_app/main.dart';

class CartPage extends StatefulWidget {
  CartPage({super.key});
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 92, left: 27),
                  child: const Text(
                    "Корзина",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        height: 28 / 24,
                        letterSpacing: 0.33),
                  ),
                ),
                ListView.builder(
                    itemCount: appData.cartItems.length,
                    padding:
                        const EdgeInsets.only(top: 38, left: 27.5, right: 27.5),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xFFE0E0E0),
                                    width: 1.0,
                                    strokeAlign: BorderSide.strokeAlignInside),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(12))),
                            margin: EdgeInsets.only(bottom: 16),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 16, top: 16),
                                  child: Text(
                                    appData.cartItems[index].item.name,
                                    style: const TextStyle(
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        letterSpacing: -0.32,
                                        height: 20 / 16),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 13, top: 34, right: 6, bottom: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          const SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            "${appData.cartItems[index].item.price.toString()} ₽",
                                            style: const TextStyle(
                                              fontFamily: "Montserrat",
                                              fontSize: 17,
                                              height: 24 / 17,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "${appData.cartItems[index].patientCount.toString()} пациент",
                                            style: const TextStyle(
                                              fontFamily: "Montserrat",
                                              fontSize: 15,
                                              height: 20 / 15,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 16,
                                          ),
                                          Container(
                                            padding: EdgeInsets.zero,
                                            decoration: BoxDecoration(
                                                color: Color(0xFFF5F5F9),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(8))),
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 32,
                                                  height: 32,
                                                  child: IconButton(
                                                    padding: EdgeInsets.zero,
                                                    onPressed: () {},
                                                    icon: SvgPicture.asset(
                                                      appData.cartItems[index]
                                                                  .patientCount >
                                                              1
                                                          ? "assets/icons/remove_enabled.svg"
                                                          : "assets/icons/remove_disabled.svg",
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  color: Color(0xFFEBEBEB),
                                                  width: 1,
                                                  height: 16,
                                                ),
                                                Container(
                                                  width: 32,
                                                  height: 32,
                                                  child: IconButton(
                                                    padding: EdgeInsets.zero,
                                                    onPressed: () {},
                                                    icon: SvgPicture.asset(
                                                      "assets/icons/add_enabled.svg",
                                                    ),
                                                    style: IconButton.styleFrom(
                                                        padding:
                                                            EdgeInsets.zero),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: EdgeInsets.all(16),
                              width: 20,
                              height: 20,
                                child: IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () => {},
                                    icon: SvgPicture.asset(
                                        "assets/icons/delete.svg"))),
                          )
                        ],
                      );
                    }),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 40, horizontal: 29),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Сумма",
                        style: const TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            letterSpacing: 0.38,
                            height: 28 / 20),
                      ),
                      Text(
                        "2490 ₽",
                        style: const TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            letterSpacing: 0.38,
                            height: 28 / 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1A6FEE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.only(
                          top: 16, right: 26, bottom: 16, left: 27)),
                  child: const Text(
                    "Перейти к оформлению заказа",
                    style: TextStyle(
                        color: Color(0XFFFFFFFF),
                        fontFamily: "Montserrat",
                        fontSize: 17,
                        height: 24 / 17,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
