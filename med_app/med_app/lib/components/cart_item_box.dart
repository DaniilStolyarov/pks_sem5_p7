import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../main.dart';

class CartItemBox extends StatefulWidget {
  CartItemBox({super.key, required this.cartIndex});
  int cartIndex;

  @override
  State<CartItemBox> createState() => _CartItemBoxState();
}

class _CartItemBoxState extends State<CartItemBox> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color(0xFFE0E0E0),
                  width: 1.0,
                  strokeAlign: BorderSide.strokeAlignInside),
              borderRadius: const BorderRadius.all(Radius.circular(12))),
          margin: EdgeInsets.only(bottom: 16),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 16, top: 16),
                child: Text(
                  appData.cartItems[widget.cartIndex].item.name,
                  style: const TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      letterSpacing: -0.32,
                      height: 20 / 16),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 13, top: 34, right: 6, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "${appData.cartItems[widget.cartIndex].item.price.toString()} ₽",
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
                          "${appData.cartItems[widget.cartIndex].patientCount.toString()} пациент",
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 32,
                                height: 32,
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: () {
                                    if (appData.cartItems[widget.cartIndex]
                                            .patientCount >
                                        1) {
                                      setState(() {
                                        appData.cartItems[widget.cartIndex]
                                            .patientCount -= 1;
                                      });
                                      appData.cartState!.forceUpdateState();
                                    }
                                  },
                                  icon: SvgPicture.asset(
                                    appData.cartItems[widget.cartIndex]
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
                                  onPressed: () {
                                    setState(() {
                                      appData.cartItems[widget.cartIndex]
                                          .patientCount += 1;
                                    });
                                    appData.cartState!.forceUpdateState();
                                  },
                                  icon: SvgPicture.asset(
                                    "assets/icons/add_enabled.svg",
                                  ),
                                  style: IconButton.styleFrom(
                                      padding: EdgeInsets.zero),
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
                  onPressed: () {
                    appData.cartItems.removeAt(widget.cartIndex);
                    if (appData.cartState != null) {
                      appData.cartState!.forceUpdateState();
                    }
                  },
                  icon: SvgPicture.asset("assets/icons/delete.svg"))),
        )
      ],
    );
  }
}
