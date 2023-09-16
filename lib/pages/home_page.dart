import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});
  static final String id = "Home_page";

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    final List<String> _items = [
      "assets/images/image_1.jpeg",
      "assets/images/image_2.jpg",
      "assets/images/image_3.png",
      "assets/images/image_4.jpg",
      "assets/images/image_1.jpeg",
      "assets/images/image_2.jpg",
      "assets/images/image_3.png",
      "assets/images/image_4.jpg",
      "assets/images/image_1.jpeg",
      "assets/images/image_2.jpg",
      "assets/images/image_3.png",
      "assets/images/image_4.jpg"
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Shop app"),
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 30,
              width: 36,
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text("8"),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
                width: double.infinity,
                height: 240,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("assets/images/image_3.png"),
                      fit: BoxFit.cover,
                    )),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          colors: [
                        Colors.black.withOpacity(.3),
                        Colors.black.withOpacity(.3),
                      ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Lifestyle sale",
                        style: TextStyle(color: Colors.white, fontSize: 38),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Shop now",
                            style: TextStyle(color: Colors.grey.shade900),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: _items.map((item) => cellOffList(item)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cellOffList(String item) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(item),
              fit: BoxFit.cover,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(Icons.star_border, color: Colors.yellow, size: 30),
          ],
        ),
      ),
    );
  }
}
