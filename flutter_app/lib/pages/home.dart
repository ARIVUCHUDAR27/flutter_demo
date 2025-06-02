import 'package:flutter/material.dart';
import 'package:flutter_app/Widget/Widget_support.dart';
import 'package:flutter_app/pages/details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, pizza = false, burger = false, salad = false;
  bool _showSearch = false;
  TextEditingController _searchController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
          colors: [Colors.white, Colors.pink.shade50],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          ),
        ),
        margin: const EdgeInsets.only(top: 20.0,left: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hello Luna👋", style: AppWidget.boldTextFieldStyle()),

                Row(children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      width: _showSearch ? 180 : 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.pink.shade100,
                        ),
                      ),
                      child: _showSearch
                          ? TextField(
                              controller: _searchController,
                              style: TextStyle(fontSize: 14),
                              decoration: InputDecoration(
                                hintText: 'Search...',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 10.0),
                              ),
                            )
                          : IconButton(
                              icon: Icon(Icons.search, color: Colors.black),
                              onPressed: () {
                                setState(() {
                                  _showSearch = !_showSearch;
                                });
                              },
                            ),
                    ),
                  ),
                ],),

                Container(
                  margin: EdgeInsets.only(right: 20.0),
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text("Delicious Food", style: AppWidget.HeaderTextFieldStyle()),
            Text(
              "We made fresh and healthy food",
              style: AppWidget.LightTextFieldStyle(),
            ),
            SizedBox(height: 20.0),
            Container(margin: EdgeInsets.only(right: 20.0), child: showItem()),
SizedBox(height: 30.0),
SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    children: [
      // Card 1
      GestureDetector(
        onTap: () async {
          await precacheImage(
            AssetImage("images/salad2.jpeg"),
             context,);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Details(
                image: "images/salad2.jpeg",
                title: "Veggie Taco Hash",
                subtitle: "Fresh and healthy food",
                description:
                    "A veggie taco salad is a hearty and customizable salad featuring a bed of lettuce or other greens topped with various vegetables, beans, and sometimes cheese, all served with a flavorful dressing, often a taco-inspired one.",
                price: "\$12",
              ),
            ),
          );
        },
        child: Container(
          margin: EdgeInsets.all(1),
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "images/salad2.jpeg",
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  Text("Veggie Taco Hash", style: AppWidget.SemiBoldTextFieldStyle()),
                  SizedBox(height: 5.0),
                  Text("Fresh and healthy food", style: AppWidget.LightTextFieldStyle()),
                  SizedBox(height: 5.0),
                  Text("\$12", style: AppWidget.SemiBoldTextFieldStyle()),
                ],
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: 15.0),

      // Card 2
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Details(
                image: "images/salad3.jpeg",
                title: "Chick Salad",
                subtitle: "crunchy and delicious",
                description: "A delicious and healthy Mediterranean salad.",
                price: "\$12",
              ),
            ),
          );
        },
        child: Container(
          margin: EdgeInsets.all(1),
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "images/salad3.jpeg",
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  Text("Chick Salad", style: AppWidget.SemiBoldTextFieldStyle()),
                  SizedBox(height: 5.0),
                  Text("crunchy and delicious", style: AppWidget.LightTextFieldStyle()),
                  SizedBox(height: 5.0),
                  Text("\$12", style: AppWidget.SemiBoldTextFieldStyle()),
                ],
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: 15.0),

      // Card 3
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Details(
                image: "images/salad4.jpeg",
                title: "Caesar Salad",
                subtitle: "Classic flavor",
                description: "Romaine, croutons, and Caesar dressing.",
                price: "\$14",
              ),
            ),
          );
        },
        child: Container(
          margin: EdgeInsets.all(1),
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("images/salad4.jpeg", height: 150, width: 150, fit: BoxFit.cover),
                  Text("Caesar Salad", style: AppWidget.SemiBoldTextFieldStyle()),
                  SizedBox(height: 5.0),
                  Text("Classic flavor", style: AppWidget.LightTextFieldStyle()),
                  SizedBox(height: 5.0),
                  Text("\$14", style: AppWidget.SemiBoldTextFieldStyle()),
                ],
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: 15.0),

      // Card 4
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Details(
                image: "images/salad5.jpeg",
                title: "Greek Salad",
                subtitle: "Feta & olives",
                description: "Fresh tomatoes, cucumbers, onions, olives, and feta cheese.",
                price: "\$13",
              ),
            ),
          );
        },
        child: Container(
          margin: EdgeInsets.all(1),
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("images/salad5.jpeg", height: 150, width: 150, fit: BoxFit.cover),
                  Text("Greek Salad", style: AppWidget.SemiBoldTextFieldStyle()),
                  SizedBox(height: 5.0),
                  Text("Feta & olives", style: AppWidget.LightTextFieldStyle()),
                  SizedBox(height: 5.0),
                  Text("\$13", style: AppWidget.SemiBoldTextFieldStyle()),
                ],
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: 15.0),

      // Card 5
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Details(
                image: "images/salad6.jpeg",
                title: "Avocado Mix",
                subtitle: "Creamy and green",
                description: "Avocado slices with greens and light citrus dressing.",
                price: "\$15",
              ),
            ),
          );
        },
        child: Container(
          margin: EdgeInsets.all(1),
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("images/salad6.jpeg", height: 150, width: 150, fit: BoxFit.cover),
                  Text("Avocado Mix", style: AppWidget.SemiBoldTextFieldStyle()),
                  SizedBox(height: 5.0),
                  Text("Creamy and green", style: AppWidget.LightTextFieldStyle()),
                  SizedBox(height: 5.0),
                  Text("\$15", style: AppWidget.SemiBoldTextFieldStyle()),
                ],
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: 15.0),

      // Card 6
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Details(
                image: "images/salad7.jpeg",
                title: "Quinoa Power",
                subtitle: "Superfood bowl",
                description: "Quinoa with vegetables and a zesty lemon dressing.",
                price: "\$16",
              ),
            ),
          );
        },
        child: Container(
          margin: EdgeInsets.all(1),
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("images/salad7.jpeg", height: 150, width: 150, fit: BoxFit.cover),
                  Text("Quinoa Power", style: AppWidget.SemiBoldTextFieldStyle()),
                  SizedBox(height: 5.0),
                  Text("Superfood bowl", style: AppWidget.LightTextFieldStyle()),
                  SizedBox(height: 5.0),
                  Text("\$16", style: AppWidget.SemiBoldTextFieldStyle()),
                ],
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: 15.0),

      // Card 7
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Details(
                image: "images/salad6.jpeg",
                title: "Berry Delight",
                subtitle: "Sweet & fresh",
                description: "A colorful salad with strawberries, blueberries, and greens.",
                price: "\$13",
              ),
            ),
          );
        },
        child: Container(
          margin: EdgeInsets.all(1),
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("images/salad6.jpeg", height: 150, width: 150, fit: BoxFit.cover),
                  Text("Berry Delight", style: AppWidget.SemiBoldTextFieldStyle()),
                  SizedBox(height: 5.0),
                  Text("Sweet & fresh", style: AppWidget.LightTextFieldStyle()),
                  SizedBox(height: 5.0),
                  Text("\$13", style: AppWidget.SemiBoldTextFieldStyle()),
                ],
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: 15.0),

      // Card 8
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Details(
                image: "images/salad7.jpeg",
                title: "Fiesta Mix",
                subtitle: "Mexican inspired",
                description: "Beans, corn, and avocado with a spicy dressing.",
                price: "\$14",
              ),
            ),
          );
        },
        child: Container(
          margin: EdgeInsets.all(1),
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("images/salad7.jpeg", height: 150, width: 150, fit: BoxFit.cover),
                  Text("Fiesta Mix", style: AppWidget.SemiBoldTextFieldStyle()),
                  SizedBox(height: 5.0),
                  Text("Mexican inspired", style: AppWidget.LightTextFieldStyle()),
                  SizedBox(height: 5.0),
                  Text("\$14", style: AppWidget.SemiBoldTextFieldStyle()),
                ],
              ),
            ),
          ),
        ),
      ),
    ],
  ),
),
            SizedBox(height: 20.0),
Padding(
  padding: const EdgeInsets.only(left: 12.0), // Adjust the value as needed
  child: Text(
    "Popular Items",
    style: AppWidget.HeaderTextFieldStyle(),
  ),
),


SizedBox(height: 10.0),


Divider(
  color: Colors.grey,
  height:30.0,
  thickness: 1.0,
),

            
            SizedBox(height: 10.0),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10.0,left: 10.0),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(4),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "images/salad2.jpeg",
                                height: 120,
                                width: 120,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 20.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    child: Text(
                                      "Mediterranean Chick Salad",
                                      style: AppWidget.SemiBoldTextFieldStyle(),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(height: 5.0),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    child: Text(
                                      "Honey Goat Cheese",
                                      style: AppWidget.LightTextFieldStyle(),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    child: Text(
                                      "\$20",
                                      style: AppWidget.SemiBoldTextFieldStyle(),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
 
                    SizedBox(height: 20.0),
                    Container(
                      // Third Card
                      margin: EdgeInsets.only(right: 10.0,left:10.0),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(4),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "images/salad4.jpeg",
                                height: 120,
                                width: 120,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 20.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    child: Text(
                                      "Mediterranean Chick Salad",
                                      style: AppWidget.SemiBoldTextFieldStyle(),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(height: 5.0),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    child: Text(
                                      "Honey Goat Cheese",
                                      style: AppWidget.LightTextFieldStyle(),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    child: Text(
                                      "\$20",
                                      style:
                                          AppWidget.SemiBoldTextFieldStyle(),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

 Widget showItem() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildSelectableItem(
        isSelected: pizza,
        imagePath: "images/pizza.jpeg",
        onTap: () {
          pizza = true;
          burger = false;
          icecream = false;
          salad = false;
          setState(() {});
        },
      ),
      _buildSelectableItem(
        isSelected: burger,
        imagePath: "images/burger.jpeg",
        onTap: () {
          burger = true;
          pizza = false;
          icecream = false;
          salad = false;
          setState(() {});
        },
      ),
      _buildSelectableItem(
        isSelected: salad,
        imagePath: "images/salad.jpeg",
        onTap: () {
          salad = true;
          pizza = false;
          icecream = false;
          burger = false;
          setState(() {});
        },
      ),
      _buildSelectableItem(
        isSelected: icecream,
        imagePath: "images/ice-cream.jpeg",
        onTap: () {
          icecream = true;
          pizza = false;
          burger = false;
          salad = false;
          setState(() {});
        },
      ),
    ],
  );
}

Widget _buildSelectableItem({
  required bool isSelected,
  required String imagePath,
  required VoidCallback onTap,
}) {
  return Material(
    elevation: isSelected ? 8.0 : 2.0,
    borderRadius: BorderRadius.circular(12.0),
    child: InkWell(
      borderRadius: BorderRadius.circular(12.0),
      onTap: onTap,
      splashColor: Colors.pink.shade50.withOpacity(0.6),
      highlightColor: Colors.pink.shade50.withOpacity(0.3),
      child: Container(
        decoration: BoxDecoration(
          color: isSelected
              ? Colors.pink.shade50.withOpacity(0.5)
              : Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: isSelected
              ? Border.all(
                  color: Colors.pink.shade300,
                  width: 3,
                )
              : Border.all(color: Colors.transparent),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Colors.pink.shade100.withOpacity(0.5),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  )
                ]
              : [],
        ),
        padding: const EdgeInsets.all(8),
        child: Image.asset(
          imagePath,
          height: 50,
          width: 50,
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
}
