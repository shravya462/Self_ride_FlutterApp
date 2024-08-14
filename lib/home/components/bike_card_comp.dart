import 'package:flutter/material.dart';
import 'package:flutter_task/constants/text_constants.dart';
import 'package:flutter_task/custom_widgets/text_widget.dart';

class BikeCardComp extends StatelessWidget {
  final String bikeImage;
  final String bikeName;
  final int priceWeekday;
  final int priceWeekend;

  BikeCardComp({
    required this.bikeImage,
    required this.bikeName,
    required this.priceWeekday,
    required this.priceWeekend,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      elevation: 3,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: Colors.yellow),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
        child: Row(
          children: [
            Container(
              height: 80,
              width: 80,
              color: Colors.grey,
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    txtTitle: bikeName,
                    txtColor: Colors.black,
                    txtFontWeight: FontWeight.bold,
                    txtFontSize: 18,
                    wrapValue: true,
                  ),
                  const SizedBox(height: 2),
                  TextWidget(
                    txtTitle: TextConstants.startFrom,
                    txtColor: Colors.black,
                    txtFontWeight: FontWeight.w500,
                    txtFontSize: 13,
                    wrapValue: true,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            txtTitle: 'Monday - Thursday',
                            txtColor: Colors.black,
                            txtFontWeight: FontWeight.w800,
                            txtFontSize: 14,
                            wrapValue: true,
                          ),
                          SizedBox(height: 4),
                          TextWidget(
                            txtTitle: 'Friday - Sunday',
                            txtColor: Colors.black,
                            txtFontWeight: FontWeight.w800,
                            txtFontSize: 14,
                            wrapValue: true,
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        height: 40,
                        child: const VerticalDivider(
                          color: Colors.black,
                          thickness: 1,
                          width: 1,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            txtTitle: '₹ $priceWeekday',
                            txtColor: Colors.black,
                            txtFontWeight: FontWeight.w800,
                            txtFontSize: 14,
                            wrapValue: true,
                          ),
                          const SizedBox(height: 4),
                          TextWidget(
                            txtTitle: '₹ $priceWeekend',
                            txtColor: Colors.black,
                            txtFontWeight: FontWeight.w800,
                            txtFontSize: 14,
                            wrapValue: true,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
