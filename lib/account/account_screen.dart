import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_task/constants/text_constants.dart';
import 'package:flutter_task/custom_widgets/text_widget.dart';
import 'package:flutter_task/custom_widgets/textformfield_widget.dart';
import 'package:flutter_task/drawer_menu_screens/component/drawer_comp.dart';

class MyAccountPage extends StatelessWidget {
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
      drawer: const Drawer(backgroundColor: Colors.white, child: DrawerComp()),
      body: SingleChildScrollView(
        padding: MediaQuery.of(context).orientation == Orientation.landscape
            ? const EdgeInsets.symmetric(vertical: 60, horizontal: 20)
            : const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextWidget(
              txtTitle: TextConstants.myAccount,
              txtColor: Colors.black,
              txtFontWeight: FontWeight.bold,
              txtFontSize: 24,
              wrapValue: true,
            ),
            const SizedBox(height: 35),
            CustomTextFormField(
              hintText: TextConstants.nameHintText,
              icon: Icons.person,
              title: TextConstants.fullName,
              keyType: TextInputType.name,
            ),
            CustomTextFormField(
              hintText: TextConstants.mblNumberHintText,
              icon: Icons.phone_android,
              title: TextConstants.mblNumber,
              keyType: TextInputType.phone,
            ),
            CustomTextFormField(
              hintText: TextConstants.emailHintText,
              icon: Icons.email,
              title: TextConstants.email,
              keyType: TextInputType.emailAddress,
            ),
            CustomTextFormField(
              hintText: TextConstants.dlHintText,
              icon: Icons.card_membership,
              title: TextConstants.emgNumberHintText,
              keyType: TextInputType.text,
            ),
            CustomTextFormField(
              hintText: TextConstants.emgNumberHintText,
              icon: Icons.contact_phone,
              title: TextConstants.emgNumberHintText,
              keyType: TextInputType.number,
            ),
            SizedBox(
              width: MediaQuery.of(context).orientation == Orientation.landscape
                  ? MediaQuery.of(context).size.width * 0.7
                  : MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.amber,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: TextWidget(
                  txtTitle: TextConstants.updateProfile,
                  txtColor: Colors.black,
                  txtFontWeight: FontWeight.w800,
                  txtFontSize: 16,
                  wrapValue: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
