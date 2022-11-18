import 'package:flutter/material.dart';
import 'package:ui_designs/pages/widgets/styles.dart';

class DukaanPremium extends StatelessWidget {
  const DukaanPremium({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
          title: const Center(child: Text("Dukaan Premium"))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //------stacking card over blue background-----
            Stack(
              children: [
                Container(
                  height: 100,
                  color: Colors.blue,
                ),
                //----------------DUKAAN PREMIUM CARD---------
                Container(
                  decoration: cardDecoration(),
                  padding: cardPadding,
                  margin: cardPadding,
                  child: Column(children: [
                    Image.network(
                      "https://mydukaan.io/blog/wp-content/uploads/2021/04/dukaan_blog.png",
                      height: 60,
                    ),
                    const Text(
                      "Get Dukaan Premium for just ₹4,999/year",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 28),
                    ),
                    const Text(
                      "All the advanced features for scoring your business.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black54, fontSize: 15),
                    ),
                  ]),
                )
              ],
            ),
            //-----------Features Section--------------
            Container(
                padding: EdgeInsets.only(left: 20),
                width: double.maxFinite,
                child: Text(
                  "Features",
                  style: titleStyle,
                )),
            const ListTile(
              title: Text("Custome domain name"),
              subtitle: Text(
                  "Get your own custom domain and build your brand on the internet"),
              leading: Icon(
                Icons.data_usage,
                color: Colors.blue,
              ),
            ),
            const ListTile(
              title: Text("Verified seller badge"),
              subtitle: Text(
                  "Get green verified badge under your store name and build that"),
              leading: Icon(
                Icons.verified,
                color: Colors.blue,
              ),
            ),
            const ListTile(
              title: Text("Dukaan for PC"),
              subtitle: Text(
                  "Access all the exclusive premium features on Dukaan for PC"),
              leading: Icon(
                Icons.desktop_windows,
                color: Colors.blue,
              ),
            ),
            const ListTile(
              title: Text("Priority Support"),
              subtitle: Text(
                  "Get your questions resolved with our priority customer support"),
              leading: Icon(
                Icons.support_agent,
                color: Colors.blue,
              ),
            ),
            //-divider-------------
            const Divider(thickness: 4),
            //-----What is Dukaan Premium?---------------------
            Container(
                padding: const EdgeInsets.only(left: 20),
                width: double.maxFinite,
                child: Text(
                  "What is Dukaan Premium?",
                  style: titleStyle,
                )),
            //-----thumbnail card--------------
            Container(
              margin: cardPadding,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                    "https://img.youtube.com/vi/id1E0lqnUtY/maxresdefault.jpg"),
              ),
            ),
            const Divider(thickness: 4),
            //----------Frequently asked Question---------
            Container(
                padding: const EdgeInsets.only(left: 20),
                width: double.maxFinite,
                child: Text(
                  "Frequently asked questions",
                  style: titleStyle,
                )),
            const ListTile(
              title: Text("What types of businesses can use Dukaan Preimum?"),
              subtitle: Text(
                  "Dukoan caters to a wide variety of sellers. Be it asmall grocery Store or a big legacy brand - anyonewho wants to sell their products/services online -Dukoan is the perfect platform for you"),
              trailing: Icon(Icons.minimize),
            ),
            const Divider(thickness: 2),
            const ListTile(
              title: Text("What is refund policy?"),
              trailing: Icon(Icons.add),
            ),
            const Divider(thickness: 2),
            const ListTile(
              title:
                  Text("Will there be an automatic charge after paid trial?"),
              trailing: Icon(Icons.add),
            ),
            const Divider(thickness: 2),
            const ListTile(
              title: Text("What happens when my free trial ends?"),
              trailing: Icon(Icons.add),
            ),
            const Divider(thickness: 4),
            //---Need help? Get in touch
            Container(
                padding: const EdgeInsets.only(left: 20),
                width: double.maxFinite,
                child: Text(
                  "Need help? Get in touch",
                  style: titleStyle,
                )),
            //----row cards live chat and call-------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //----Card 1 ---Live Chat---------
                Container(
                  decoration: cardDecoration(),
                  margin: EdgeInsets.only(top: 10),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  child: Column(
                    children: const [
                      Icon(
                        Icons.message_outlined,
                        color: Colors.black38,
                        size: 70,
                      ),
                      Text(
                        "Live Chat",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
                //----Card 1 ---Phone Call---------
                Container(
                  decoration: cardDecoration(),
                  margin: EdgeInsets.only(top: 10),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  child: Column(
                    children: const [
                      Icon(
                        Icons.phone_outlined,
                        color: Colors.black38,
                        size: 70,
                      ),
                      Text(
                        "Phone Call",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                )
              ],
            ),
            const Divider(thickness: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Select Domain",
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: const Text("Get Premium")))
              ],
            )
          ],
        ),
      ),
    );
  }
}
