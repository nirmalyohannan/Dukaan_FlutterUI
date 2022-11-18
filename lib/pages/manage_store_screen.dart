import 'package:flutter/material.dart';
import 'package:ui_designs/pages/widgets/manage_store_screen.dart';

class ManageStoreScreen extends StatelessWidget {
  bool switchState = true;
  ManageStoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Manage Store",
            ),
          ),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.3,
          children: [
            PtwoCard(
                cardtitle: "Marketing Designs",
                iconlink:
                    "https://cdn-icons-png.flaticon.com/512/1485/1485100.png"),
            PtwoCard(
                cardtitle: "Online Payments",
                iconlink:
                    "https://cdn-icons-png.flaticon.com/512/2769/2769454.png"),
            PtwoCard(
                cardtitle: "Discount Coupons",
                iconlink:
                    "https://cdn-icons-png.flaticon.com/512/3012/3012373.png"),
            PtwoCard(
                iconlink:
                    "https://cdn-icons-png.flaticon.com/512/2673/2673061.png",
                cardtitle: "My Customers"),
            PtwoCard(
                iconlink:
                    "https://cdn-icons-png.flaticon.com/512/1199/1199747.png",
                cardtitle: "Store QR Code"),
            PtwoCard(
                iconlink:
                    "https://cdn-icons-png.flaticon.com/512/1052/1052866.png",
                cardtitle: "Extra Charges"),
            PtwoCard(
                iconlink:
                    "https://cdn-icons-png.flaticon.com/512/2991/2991110.png",
                cardtitle: "Order Form",
                newPost: true)
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            iconSize: 30,
            currentIndex: 2,
            unselectedItemColor: Colors.black38,
            selectedItemColor: Colors.blue,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.currency_exchange), label: "Orders"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.apps), label: "Products"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard), label: "Manage"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined), label: "Manage"),
            ]),
      ),
    );
  }
}
