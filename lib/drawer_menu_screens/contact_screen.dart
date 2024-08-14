import 'package:flutter/material.dart';
import 'package:flutter_task/constants/text_constants.dart';
import 'package:flutter_task/custom_widgets/text_widget.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

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
                txtTitle: TextConstants.contactUs,
                txtColor: Colors.black,
                txtFontWeight: FontWeight.w600,
                txtFontSize: 24,
                wrapValue: true,
              ),
              const SizedBox(
                height: 20,
              ),
              const TextComponent(
                title: TextConstants.location,
                data:
                    "Bright Bike Rentals, Bright Bike Rentals, Barlane Rd, Joythinagar, Chikmagalur, Karnataka 577101",
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                width:
                    MediaQuery.of(context).orientation == Orientation.landscape
                        ? MediaQuery.of(context).size.width * 0.7
                        : MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.location_pin, color: Colors.black),
                    const SizedBox(
                      width: 15,
                    ),
                    TextWidget(
                      txtTitle: TextConstants.locateUs,
                      txtColor: Colors.black,
                      txtFontWeight: FontWeight.w600,
                      txtFontSize: 20,
                      wrapValue: true,
                    ),
                  ],
                ),
              ),
              const TextComponent(
                title: TextConstants.emailUs,
                data: "brightbikerentals@gmail.com",
              ),
              const TextComponent(
                title: TextConstants.callUs,
                data: "+91 - 9845627893",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.call, color: Colors.black),
                    label: TextWidget(
                      txtTitle: TextConstants.talkToUs,
                      txtColor: Colors.black,
                      txtFontWeight: FontWeight.w600,
                      txtFontSize: 15,
                      wrapValue: true,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      shape: const StadiumBorder(),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.chat, color: Colors.white),
                    label: TextWidget(
                      txtTitle: TextConstants.chatWithUs,
                      txtColor: Colors.white,
                      txtFontWeight: FontWeight.w600,
                      txtFontSize: 15,
                      wrapValue: true,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: const StadiumBorder(),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TextComponent extends StatelessWidget {
  final String title;
  final String data;
  const TextComponent({super.key, required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            txtTitle: title,
            txtColor: Colors.black,
            txtFontWeight: FontWeight.w800,
            txtFontSize: 18,
            wrapValue: true,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: TextWidget(
              txtTitle: data,
              txtColor: Colors.black,
              txtFontWeight: FontWeight.w500,
              txtFontSize: 14,
              wrapValue: true,
            ),
          ),
        ],
      ),
    );
  }
}
