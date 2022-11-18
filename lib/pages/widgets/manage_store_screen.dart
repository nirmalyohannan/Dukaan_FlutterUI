import 'package:flutter/material.dart';

Widget PtwoCard(
    {required String iconlink,
    required String cardtitle,
    bool newPost = false}) {
  return Container(
    margin: const EdgeInsets.all(20),
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(blurRadius: 3, spreadRadius: 0.1, color: Colors.black12)
        ]),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            iconlink,
            height: 27,
          ),
          const Spacer(),
          Visibility(
            visible: newPost,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(4))),
              child: const Text(
                "NEW",
                style: TextStyle(fontSize: 11),
              ),
            ),
          )
        ],
      ),
      Text(
        cardtitle,
        style: TextStyle(fontSize: 23),
      )
    ]),
  );
}
