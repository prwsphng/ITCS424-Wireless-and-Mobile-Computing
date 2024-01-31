import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Listing")),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          ProductBox(
              name: "Sex in a Pan",
              description: "Banoffee good good",
              price: 195,
              image: "banana.png",
              isNetworkImage: false),
          ProductBox(
              name: "Strawberry in a dream",
              description: "Strawberry Cream Cake",
              price: 650,
              image: "cake.png",
              isNetworkImage: false),
          ProductBox(
              name: "Sweet Strawberry Cheesecake",
              description: "Strawberry Cheesecake",
              price: 155,
              image: "cheesecake.png",
              isNetworkImage: false),
          ProductBox(
              name: "Peanut Butter Cheesecake",
              description: "Peanut Butter Cheesecake",
              price: 135,
              image:
                  "https://chocolatecoveredkatie.com/wp-content/uploads/2023/03/Peanut-Butter-Cheesecake-Recipe-jpg.webp",
              isNetworkImage: true),
          ProductBox(
              name: "Cookie Cookie DoDo",
              description: "Chocolate Chip Cookie",
              price: 70,
              image:
                  'https://sallysbakingaddiction.com/wp-content/uploads/2013/05/classic-chocolate-chip-cookies.jpg',
              isNetworkImage: true),
          ProductBox(
              name: "Biscoff things",
              description: "Biscoff Ice Cream",
              price: 80,
              image:
                  "https://ellasbetterbakes.com/wp-content/uploads/2021/04/RX_04708.jpg?v=1619722482",
              isNetworkImage: true),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({
    Key? key,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.isNetworkImage,
  }) : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            isNetworkImage
                ? Image.network(image, width: 80, height: 80)
                : Image.asset('/appimages/' + image, width: 80, height: 80),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      this.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(this.description),
                    Text("Price: " + this.price.toString()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
