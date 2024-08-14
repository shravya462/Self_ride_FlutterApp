import 'package:flutter/material.dart';
import 'package:flutter_task/constants/text_constants.dart';
import 'package:flutter_task/custom_widgets/text_widget.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                txtTitle: TextConstants.aboutTitle,
                txtColor: Colors.black,
                txtFontWeight: FontWeight.w600,
                txtFontSize: 24,
                wrapValue: true,
              ),
              const SizedBox(
                height: 20,
              ),
              TextWidget(
                txtTitle:
                    'Bright Bike Rentals started with two motorcycles. Our first motorcycle was a Activa 110 CC in 2012. Bright Bike Rentals is a branch of Bright Institute of Information Science, which was established in 2006 inMallandur Road, Chikkamagaluru. \n\nA first-ever private individual bike rental service provider in Chikkamagaluru in 2012. Our business started with scooter rentals in 2012, and then we partnered with Wheel Street Bikes on Rent through online bookings. At the moment, we are a licensed and approved rental service from Karnataka State Road Transport Authority.\n\n Our greatest pleasure was being able to offer countless people the experience of riding a bike for the first time in their lives in hills station. For many of these people, it was the childhood fantasy they never forgot.\n\n We appreciate every government official who believes in our model ability to promote tourism and provide a more alternative travel experience.\n\n We would like to take this opportunity to thank the Karnataka Transport Department for believing in us and granting us our first licenses in most of the places where we had applied. They provided us with good inputs and support throughout the process',
                txtColor: Colors.black,
                txtFontWeight: FontWeight.w600,
                txtFontSize: 16,
                wrapValue: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
