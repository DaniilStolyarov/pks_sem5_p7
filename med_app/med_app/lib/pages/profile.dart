import 'package:flutter/material.dart';
import 'package:med_app/components/profile_menu_item.dart';
class ProfilePage extends StatefulWidget{
  ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 27, top: 92),
            child: const Text(
                "Эдуард",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    height: 28 / 24,
                    letterSpacing: 0.33),
              ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 27, top: 22),
            child: const Text(
                "+7 900 800-55-33",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    height: 16 / 15,
                    color: Color(0xFF898A8D),
                    letterSpacing: 0.33),
              ),
          ),Container(
            margin: const EdgeInsets.only(left: 27, top: 16),
            child: const Text(
                "email@gmail.com",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    height: 16 / 15,
                    color: Color(0xFF898A8D),
                    letterSpacing: 0.33),
              ),
          ),
          SizedBox(height: 48,),
          Container(
            padding: EdgeInsets.only(left: 27, right: 28),
            child: Column(
              children: [
                ProfileMenuItem(label: "Мои заказы", iconAssetPath: "assets/icons/order.png"),
                ProfileMenuItem(label: "Медицинские карты", iconAssetPath: "assets/icons/cards.png"),
                ProfileMenuItem(label: "Мои адреса", iconAssetPath: "assets/icons/adress.png"),
                ProfileMenuItem(label: "Настройки", iconAssetPath: "assets/icons/settings.png"),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ProfileBottomMenuItem(label: "Ответы на вопросы"),
                      ProfileBottomMenuItem(label: "Политика конфиденциальности"),
                      ProfileBottomMenuItem(label: "Пользовательское соглашение"),
                      ProfileBottomMenuItem(label: "Выход",color: Color(0xFFFD3535),),
                
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProfileBottomMenuItem extends StatelessWidget {
  ProfileBottomMenuItem({
    super.key,
    required this.label,
    this.color
  });
  String label;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: color ?? Color(0xFF939396),
        textStyle: TextStyle(
          fontFamily: "Montserrat",
          fontSize: 15,
          height: 20/15,
          letterSpacing: 0,
        )
      ),
      onPressed: () {},
      child: Text(label),
    );
  }
}
