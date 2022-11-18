import 'package:flutter/material.dart';
import 'package:ui_designs/pages/additional_info_screen.dart';
import 'package:ui_designs/pages/catalogue_screen.dart';
import 'package:ui_designs/pages/dukaan_premium.dart';
import 'package:ui_designs/pages/manage_store_screen.dart';
import 'package:ui_designs/pages/order_screen.dart';
import 'package:ui_designs/pages/payments.dart';

void main(List<String> args) {
  runApp(const UiDesigns());
}

class UiDesigns extends StatelessWidget {
  const UiDesigns({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: // AdditionalInfoScreen(),
            // ManageStoreScreen()
            // PaymentsScreen(),
            // DukaanPremium()
            // OrderScreen(),
            CatalogueScreen());
  }
}
