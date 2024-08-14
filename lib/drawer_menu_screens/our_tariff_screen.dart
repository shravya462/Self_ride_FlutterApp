import 'package:flutter/material.dart';
import 'package:flutter_task/constants/text_constants.dart';
import 'package:flutter_task/custom_widgets/text_widget.dart';
import 'package:flutter_task/home/components/bike_card_comp.dart';
import 'package:flutter_task/models/bike_data.dart';

class OurTariffScreen extends StatelessWidget {
  const OurTariffScreen({super.key});

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
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                txtTitle: TextConstants.ourTariff,
                txtColor: Colors.black,
                txtFontWeight: FontWeight.w600,
                txtFontSize: 24,
                wrapValue: true,
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
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
              ),
            ],
          );
        }),
      ),
    );
  }
}
