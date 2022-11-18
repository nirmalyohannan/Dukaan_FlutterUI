import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:ui_designs/pages/widgets/styles.dart';

class PaymentsScreen extends StatelessWidget {
  const PaymentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Payments",
          ),
        ),
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.info_outline))
        ],
      ),
      body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              // Transcation Limit Card starts here
              Container(
                margin: cardPadding,
                padding: cardPadding,
                decoration: cardDecoration(),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Transaction Limit",
                        style: titleStyle,
                      ),
                      Text(
                        "A free limit upto which you will recieve the online paments directly in your bank",
                        style: contentStyle,
                      ),
                      const SizedBox(height: 10),
                      LinearPercentIndicator(
                        padding: const EdgeInsets.all(0),
                        percent: 0.3,
                        progressColor: Colors.blue,
                        barRadius: const Radius.circular(10),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "36,668 left out of ₹50,000",
                        style: contentStyle,
                      ),
                      ElevatedButton(
                          onPressed: () {}, child: const Text("Increase limit"))
                    ]),
              ),
              // Transcation Limit Card ends here
              ListTile(
                title: Text("Default Method", style: titleStyle),
                trailing: Text(
                  "online Payments >",
                  style: contentStyle,
                ),
              ),
              ListTile(
                title: Text("Payment Profile", style: titleStyle),
                trailing: Text(
                  "Bank Account >",
                  style: contentStyle,
                ),
              ),
              //Divider Line----------------------------------------
              const Divider(
                  color: Colors.black45,
                  indent: 20,
                  endIndent: 20), //Divider Line
              //Divider Line----------------------------------------
              //-------Payment OverView------------
              ListTile(
                title: Text("Payment OverView", style: titleStyle),
                trailing: Text(
                  "Life Time ▼",
                  style: contentStyle,
                ),
              ),
              //-------CARDS----ROW---------------
              Row(
                children: [
                  //-------Card 1 ----ORANGE--------------
                  Container(
                    margin: cardPadding,
                    padding: cardPadding,
                    decoration: cardDecoration(color: Colors.orange),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "AMOUNT ON HOLD",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text("₹0",
                            style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                      ],
                    ),
                  ), //-------Card 2 ----GREEN--------------
                  Container(
                    margin: cardPadding,
                    padding: cardPadding,
                    decoration: cardDecoration(color: Colors.green),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "AMOUNT RECIEVED",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text("₹13,332",
                            style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                      ],
                    ),
                  )
                ],
              ),
              //-----Transactions--------------
              Container(
                padding: const EdgeInsets.only(left: 20),
                width: double.maxFinite,
                child: Text(
                  "Transactions",
                  style: titleStyle,
                  textAlign: TextAlign.left,
                ),
              ),
              //--------3 tabs -----(On hold, Payouts, refunds)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    decoration: const BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: const Text(
                      "On hold",
                      style: TextStyle(color: Colors.black38),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: const Text(
                      "Payouts (15)",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    decoration: const BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: const Text(
                      "Refunds",
                      style: TextStyle(color: Colors.black38),
                    ),
                  ),
                ],
              ),
              //------List Tiles ---------------------------
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: ((context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          title: const Text("Order #16888"),
                          subtitle: const Text("Jul 12, 02:06 PM"),
                          leading: Image.network(
                              "https://rukminim1.flixcart.com/image/332/398/l45xea80/shirt/v/e/t/38-men-regular-slim-fit-solid-button-down-collar-formal-shirt-original-imagf4mxnhanzdtn.jpeg?q=50"),
                          trailing: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Text(
                                "₹799",
                                style: TextStyle(color: Colors.blue),
                              ),
                              Text(
                                "🟢 succesful",
                                style: TextStyle(color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          "   ₹799 Deposited to 588347849903",
                          style: TextStyle(color: Colors.black38, fontSize: 12),
                        )
                      ],
                    );
                  }))
            ],
          )),
    );
  }
}
