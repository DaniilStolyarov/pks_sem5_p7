import 'package:flutter/material.dart';
import 'package:med_app/components/service_item.dart';
import 'package:med_app/main.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 92, right: 188, bottom: 0, left: 27),
            child: const Text(
              "Каталог услуг",
              style: TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  height: 28 / 24,
                  letterSpacing: 0.33),
            ),
          ),
          ListView.builder(
              itemCount: appData.services.length,
              padding: const EdgeInsets.only(top: 38),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return ServiceItem(serviceIndex: index,);
              })
        ],
      ),
    );
  }
}
