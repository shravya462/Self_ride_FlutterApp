import 'package:flutter/material.dart';
import 'package:flutter_task/constants/images_constants.dart';
import 'package:flutter_task/constants/text_constants.dart';
import 'package:flutter_task/custom_widgets/text_widget.dart';
import 'package:flutter_task/drawer_menu_screens/component/drawer_comp.dart';
import 'package:flutter_task/home/components/bike_card_comp.dart';
import 'package:flutter_task/models/bike_data.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Bike> bikes = [
      Bike(
        bikeImage: 'assets/activa.png',
        bikeName: 'Activa 4G BS4',
        priceWeekday: 500,
        priceWeekend: 700,
      ),
      Bike(
        bikeImage: 'assets/dio.png',
        bikeName: 'Dio STD BS4',
        priceWeekday: 500,
        priceWeekend: 700,
      ),
      Bike(
        bikeImage: 'assets/yamaha.png',
        bikeName: 'Yamaha FZ V2',
        priceWeekday: 700,
        priceWeekend: 1000,
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Container(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.call, color: Colors.black),
              label: TextWidget(
                txtTitle: "+91 - 9845627893",
                txtColor: Colors.black,
                txtFontWeight: FontWeight.w500,
                txtFontSize: 14,
                wrapValue: true,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                shape: const StadiumBorder(),
              ),
            ),
          )
        ],
      ),
      drawer: const Drawer(backgroundColor: Colors.white, child: DrawerComp()),
      body: SingleChildScrollView(
        padding: MediaQuery.of(context).orientation == Orientation.landscape
            ? const EdgeInsets.symmetric(vertical: 60, horizontal: 20)
            : const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              txtTitle: TextConstants.welcomeText,
              txtColor: Colors.black,
              txtFontWeight: FontWeight.bold,
              txtFontSize: 24,
              wrapValue: true,
            ),
            const SizedBox(height: 8),
            TextWidget(
              txtTitle: TextConstants.subText,
              txtColor: Colors.grey,
              txtFontWeight: FontWeight.w400,
              txtFontSize: 18,
              wrapValue: true,
            ),
            const SizedBox(height: 16),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                Images.bannerImg,
                height: 200,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 16),
            TextWidget(
              txtTitle: TextConstants.ourFleet,
              txtColor: Colors.grey,
              txtFontWeight: FontWeight.bold,
              txtFontSize: 20,
              wrapValue: true,
            ),
            const SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: bikes.length,
              itemBuilder: (context, index) {
                final bike = bikes[index];
                return BikeCardComp(
                  bikeImage: bike.bikeImage,
                  bikeName: bike.bikeName,
                  priceWeekday: bike.priceWeekday,
                  priceWeekend: bike.priceWeekend,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
