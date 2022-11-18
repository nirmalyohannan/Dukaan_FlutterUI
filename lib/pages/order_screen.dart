import 'package:flutter/material.dart';
import 'package:ui_designs/pages/widgets/styles.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("order #1688068"),
        ),
        leading: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          //-----DATE--------------------
          const ListTile(
            title: Text("May 31, 05:42 PM"),
            trailing: Text(
              "🔵 Delivered",
              style: TextStyle(color: Colors.black54),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Divider(thickness: 2),
          ),
          //-----1 ITEM----------RECIEPT-------
          Container(
            padding: cardPadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "1 ITEM",
                  style: TextStyle(color: Colors.black45, fontSize: 18),
                ),
                Text(
                  "🧾 RECIEPT",
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                )
              ],
            ),
          ),
          ListTile(
            leading: Image.network(
                "https://rukminim1.flixcart.com/image/332/398/l45xea80/shirt/v/e/t/38-men-regular-slim-fit-solid-button-down-collar-formal-shirt-original-imagf4mxnhanzdtn.jpeg?q=50"),
            title: const Text("Explore | Men | Navy Blue"),
            subtitle: const Text("1 piece \nSize: XL"),
          ),
          Container(
            padding: const EdgeInsets.only(left: 50, right: 10),
            child: Row(
              children: [
                TextButton(onPressed: () {}, child: Icon(Icons.filter_1)),
                const Text(
                  "x ₹799",
                  style: TextStyle(fontSize: 16),
                ),
                const Spacer(),
                const Text("₹799")
              ],
            ),
          ),
          //------Divider----------
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Divider(thickness: 2),
          ),
          //--ITEM TOTAL--------Delivery---Grand Total
          const ListTile(
            visualDensity: VisualDensity(vertical: -4),
            title: Text("Item Total"),
            trailing: Text("₹799"),
          ),
          const ListTile(
            visualDensity: VisualDensity(vertical: -4),
            title: Text("Delivery"),
            trailing: Text(
              "FREE",
              style: TextStyle(color: Colors.green),
            ),
          ),
          const ListTile(
            visualDensity: VisualDensity(vertical: -4),
            title: Text(
              "Grand Total",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            trailing: Text(
              "₹799",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Divider(thickness: 2),
          ),
          //---CUSTOMER DETAILS---------------
          ListTile(
            title: const Text(
              "CUSTOMER DETAILS",
              style: TextStyle(color: Colors.black45),
            ),
            trailing: TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.share),
              label: const Text("SHARE"),
            ),
          ),
          ListTile(
            title: Text(
              "Deepa",
              style: titleStyle,
            ),
            subtitle: Text(
              "+91-7829000484",
              style: contentStyle,
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(
                  Icons.call,
                  color: Colors.blue,
                  size: 35,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.whatsapp,
                  color: Colors.green,
                  size: 35,
                )
              ],
            ),
          ),
          ListTile(
            title: Text(
              "Address",
              style: titleStyle,
            ),
            subtitle: Text(
              "D 1101 Chartered Beverly \nHills, Subramanyapura P.O",
              style: contentStyle,
            ),
          ),
          //------CITY--------PINCODE-----------
          Container(
            margin: cardPadding,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "City",
                      style: titleStyle,
                    ),
                    Text(
                      "Banglore",
                      style: contentStyle,
                    ),
                  ],
                ),
                const SizedBox(width: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pincode",
                      style: titleStyle,
                    ),
                    Text(
                      "560061",
                      style: contentStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
          //-----Payment-----------
          ListTile(
            title: Text(
              "Payment",
              style: titleStyle,
            ),
            subtitle: Text(
              "Online",
              style: contentStyle,
            ),
            trailing: Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 182, 222, 182),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: const Text(
                "PAID",
                style: TextStyle(
                    color: Color.fromARGB(255, 62, 168, 66),
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Divider(thickness: 2),
          ),

          //----Additional Information-----------
          Container(
            margin: cardPadding,
            width: double.maxFinite,
            child: const Text(
              "Additional Information",
              style: TextStyle(color: Colors.black45, fontSize: 18),
            ),
          ),
          ListTile(
            title: Text(
              "State",
              style: titleStyle,
            ),
            subtitle: Text(
              "Karanataka",
              style: contentStyle,
            ),
          ),
          ListTile(
            title: Text(
              "Email",
              style: titleStyle,
            ),
            subtitle: Text(
              "greeniceaqua@gmail.com",
              style: contentStyle,
            ),
          ),
          Container(
            margin: cardPadding,
            child: OutlinedButton(
              style: ButtonStyle(
                  side: MaterialStateProperty.all(
                      const BorderSide(color: Colors.blue)),
                  foregroundColor: MaterialStateProperty.all(Colors.blue)),
              onPressed: () {},
              child: Container(
                alignment: Alignment.center,
                width: double.maxFinite,
                child: const Text(
                  "share receipt",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
