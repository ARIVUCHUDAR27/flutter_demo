import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app/Widget/widget_support.dart';

class Details extends StatefulWidget {
  final String image;
  final String title;
  final String subtitle;
  final String description;
  final String price;

  const Details({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.price,
  });

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
            ),
            Image.asset(widget.image,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                fit: BoxFit.fill),
            SizedBox(height: 10.0),

            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.title, style: AppWidget.SemiBoldTextFieldStyle()),
                    Text(widget.subtitle, style: AppWidget.boldTextFieldStyle()),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (a > 0) {
                      --a;
                    }
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(5)),
                    child: Icon(Icons.remove, color: Colors.white),
                  ),
                ),
                SizedBox(width: 20.0),
                Text(a.toString(), style: AppWidget.SemiBoldTextFieldStyle()),
                SizedBox(width: 20.0),
                GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(5)),
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Text(widget.description, style: AppWidget.LightTextFieldStyle()),
            SizedBox(height: 10.0),
            Row(
              children: [
                Text("Delivery Time", style: AppWidget.SemiBoldTextFieldStyle()),
                Icon(Icons.alarm, color: Colors.black),
                SizedBox(width: 10.0),
                Text("30 min", style: AppWidget.SemiBoldTextFieldStyle()),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total Price", style: AppWidget.SemiBoldTextFieldStyle()),
                      Text("\$${widget.price}", style: AppWidget.boldTextFieldStyle()),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Add to cart", style: TextStyle(color: Colors.white, fontSize: 18.0, fontFamily: "poppins")),
                        SizedBox(width: 10),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(20)),
                          child: Icon(Icons.shopping_cart_outlined, color: Colors.white),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
