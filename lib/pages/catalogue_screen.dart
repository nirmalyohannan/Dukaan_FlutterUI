import 'package:flutter/material.dart';
import 'package:ui_designs/pages/widgets/styles.dart';

class CatalogueScreen extends StatelessWidget {
  const CatalogueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Catalogue"),
          ),
          actions: const [Icon(Icons.search)],
          bottom: const TabBar(tabs: [
            Tab(child: Text("Products")),
            Tab(child: Text("Categories"))
          ]),
        ),
        body: TabBarView(children: [
          //TAB BAR -----1stchild-----Products------
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: cardPadding,
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: cardDecoration(),
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.network(
                          "https://rukminim1.flixcart.com/image/416/416/km3s1ow0/grow-bag/v/c/e/10-x-12-inch-potato-grow-bags-w-access-flap-garden-planting-bag-original-imagf34cwp8wk4yr.jpeg?q=70",
                          height: 100,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Couch potato | Women..",
                              style: titleStyle,
                            ),
                            const Text("1 piece"),
                            const Text(
                              "₹799",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "In Stock",
                              style: TextStyle(color: Colors.green),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.more_vert,
                                  color: Colors.black45,
                                )),
                            Switch(
                              value: true,
                              onChanged: (value) {},
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    //-------------SHARE PRODUCT------
                    TextButton.icon(
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.black)),
                      onPressed: () {},
                      icon: const Icon(Icons.share_outlined),
                      label: const Text("Share Product"),
                    )
                  ],
                ),
              );
            },
          ),
          //TAB BAR -----2nd child----Categories-------
          Container(child: Text("sample")),
        ]),
      ),
    );
  }
}
