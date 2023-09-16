import 'package:flutter/material.dart';

class Homework_apple extends StatefulWidget {
  const Homework_apple({super.key});
  static final String id = "Homework_apple";

  @override
  State<Homework_apple> createState() => _Homework_appleState();
}

class _Homework_appleState extends State<Homework_apple> {

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade800,
      appBar: AppBar(
        backgroundColor: Colors.orange.shade800,
        title: Text("Apple Products"),
        elevation: 0,
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 30,
              width: 36,
              decoration: BoxDecoration(
                  color: Colors.orange.shade400,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text("7"),
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
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/image_5.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient:
                        LinearGradient(begin: Alignment.bottomCenter, colors: [
                      Colors.black.withOpacity(.3),
                      Colors.black.withOpacity(.3),
                    ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Lifestyle sale",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    SizedBox(
                      height: 30,
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
                          style: TextStyle(
                            color: Colors.grey.shade900,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
                child: GridView.count(
                    crossAxisCount: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  children: _items.map((items) => cellOffList(items)).toList(),
                )
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(Icons.favorite, color: Colors.red, size: 35),
          ],
        ),
      ),
    );
  }
}
