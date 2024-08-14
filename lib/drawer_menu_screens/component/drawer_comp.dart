import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_task/constants/images_constants.dart';
import 'package:flutter_task/constants/text_constants.dart';
import 'package:flutter_task/custom_widgets/text_widget.dart';
import 'package:flutter_task/drawer_menu_screens/about_us_screen.dart';
import 'package:flutter_task/drawer_menu_screens/contact_screen.dart';
import 'package:flutter_task/drawer_menu_screens/our_tariff_screen.dart';
import 'package:flutter_task/splash/splash_screen.dart';

class DrawerComp extends StatelessWidget {
  const DrawerComp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).orientation == Orientation.landscape
              ? MediaQuery.of(context).size.height * 0.7
              : MediaQuery.of(context).size.height * 0.3,
          child: const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(Images.logo),
                  radius: 80,
                  backgroundColor: Colors.grey,
                ),
              ],
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.arrow_forward),
          title: TextWidget(
            txtTitle: TextConstants.aboutUs,
            txtColor: Colors.black,
            txtFontWeight: FontWeight.w600,
            txtFontSize: 17,
            wrapValue: true,
          ),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const AboutUsScreen(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.arrow_forward),
          title: TextWidget(
            txtTitle: TextConstants.ourTariff,
            txtColor: Colors.black,
            txtFontWeight: FontWeight.w600,
            txtFontSize: 17,
            wrapValue: true,
          ),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const OurTariffScreen(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.arrow_forward),
          title: TextWidget(
            txtTitle: TextConstants.contactUs,
            txtColor: Colors.black,
            txtFontWeight: FontWeight.w600,
            txtFontSize: 17,
            wrapValue: true,
          ),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const ContactScreen(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.arrow_forward),
          title: TextWidget(
            txtTitle: TextConstants.logout,
            txtColor: Colors.black,
            txtFontWeight: FontWeight.w600,
            txtFontSize: 17,
            wrapValue: true,
          ),
          onTap: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute<void>(
                builder: (BuildContext context) => SplashScreen(),
              ),
            );
          },
        ),
      ],
    );
  }
}
