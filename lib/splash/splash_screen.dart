import 'package:flutter/material.dart';
import 'package:flutter_task/bottom_navigation.dart';
import 'package:flutter_task/constants/images_constants.dart';
import 'package:flutter_task/constants/text_constants.dart';
import 'package:flutter_task/custom_widgets/text_widget.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.amber,
                Colors.white,
              ],
              stops: [0.2, 0.6],
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment:
                MediaQuery.of(context).orientation == Orientation.landscape
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 90),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(Images.logo),
                    radius: 100,
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              TextWidget(
                txtTitle: TextConstants.splashTitle,
                txtColor: Colors.black,
                txtFontWeight: FontWeight.bold,
                txtFontSize: 68,
                wrapValue: true,
              ),
              const SizedBox(height: 10),
              TextWidget(
                txtTitle: TextConstants.splashSubTite,
                txtColor: Colors.black,
                txtFontWeight: FontWeight.w600,
                txtFontSize: 18,
                wrapValue: true,
              ),
              Container(
                width:
                    MediaQuery.of(context).orientation == Orientation.landscape
                        ? MediaQuery.of(context).size.width * 0.7
                        : MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(vertical: 60),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    TextWidget(
                      txtTitle: "+91",
                      txtColor: Colors.black,
                      txtFontWeight: FontWeight.w600,
                      txtFontSize: 18,
                      wrapValue: true,
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: TextConstants.mblNumber,
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width:
                    MediaQuery.of(context).orientation == Orientation.landscape
                        ? MediaQuery.of(context).size.width * 0.7
                        : MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => DashbaordWidget(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amberAccent,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: TextWidget(
                    txtTitle: TextConstants.getStarted,
                    txtColor: Colors.black,
                    txtFontWeight: FontWeight.w600,
                    txtFontSize: 18,
                    wrapValue: true,
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
