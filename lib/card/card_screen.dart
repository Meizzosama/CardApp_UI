import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class CardScreen extends StatefulWidget {
  double kSpacing = 20.00;

  CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  List imagepath = [
    "assets/cards/card1.png",
    "assets/cards/card2.png",
    "assets/cards/card3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Online Card",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Flexible(
            child: Padding(
              padding: MediaQuery.paddingOf(context),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Swiper(
                    itemWidth: 420,
                    itemHeight: 180,
                    loop: true,
                    duration: 100,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 400,
                        height: 400,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(imagepath[index])),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      );
                    },
                    itemCount: imagepath.length,
                    layout: SwiperLayout.STACK,
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: Text(
                  "Card menu:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
              ),
              itemCount: 4, // Number of grid items
              itemBuilder: (context, index) {
                // Replace the texts and icons as needed
                List<String> itemTexts = [
                  "Top up wallet \n money",
                  "Create wallet \n budget",
                  "Set wallet \n limits",
                  "Lock this \n card"
                ];
                List<IconData> itemIcons = [
                  Icons.wallet,
                  CupertinoIcons.chart_pie_fill,
                  Icons.settings,
                  Icons.lock,
                ];

                return GridTile(
                  child: Container(
                    color: Colors.white12,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          itemIcons[index],
                          size: 48.0,
                          color: Colors.blue,
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          itemTexts[index],
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {},
            child: Container(
              width: 250,
              height: 40,
              color: Colors.white38,
              child: const Center(
                child: Text(
                  "\+ add new card",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
