import 'package:flutter/material.dart';
import 'package:flutter_app/Widget/Widget_support.dart';
import 'package:flutter_app/pages/details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool icecream=false, pizza=false, burger=false, salad=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello Luna,",
                  style: AppWidget.boldTextFieldStyle(),
                ),
                
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
            SizedBox(height:20.0),
             Text(
                  "Delicious Food",
                  style: AppWidget.HeaderTextFieldStyle(),
                ),
                Text(
                  "We made fresh and healthy food",
                  style: AppWidget.LightTextFieldStyle(),
                ),
                SizedBox(height:20.0),
                Container(
                  margin: EdgeInsets.only(right: 20.0),
                  child: showItem()),
                SizedBox(height:30.0),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Details(
                          image: "images/salad2.jpeg",
                          title: "Veggie Taco Hash",
                          subtitle: "Fresh and healthy food",
                          description: "A delicious and healthy veggie taco hash.",
                          price: "\$12"
                        )));
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
                              children:[
                              Image.asset("images/salad2.jpeg", height:150, width:150,fit:BoxFit.cover),
                              Text("Veggie Taco Hash", 
                              style: AppWidget.SemiBoldTextFieldStyle()),
                              SizedBox(height:5.0),
                              Text("Fresh and healthy food", 
                              style: AppWidget.LightTextFieldStyle()),
                              SizedBox(height:5.0),
                              Text("\$12",
                              style: AppWidget.SemiBoldTextFieldStyle()
                              ),
                                        
                              
                            ])
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width:15.0), //GAP BT CONTAINERS
                    

                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Details(
                          image: "images/salad3.jpeg",
                          title: "Mediterranean Salad",
                          subtitle: "crunchy and delicious",
                          description: "A delicious and healthy Mediterranean salad.",
                          price: "\$12"
                        )));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                              Image.asset("images/salad3.jpeg", height:150, width:150,fit:BoxFit.cover),
                              Text("Mediterranean Salad", 
                              style: AppWidget.SemiBoldTextFieldStyle()),
                              SizedBox(height:5.0),
                              Text("crunchy and delicious", 
                              style: AppWidget.LightTextFieldStyle()),
                              SizedBox(height:5.0),
                              Text("\$12",
                              style: AppWidget.SemiBoldTextFieldStyle()
                              ),
                                        
                              
                            ])
                          ),
                        ),
                      ),
                    )
                  ],),
                ),

                SizedBox(height:30.0),

                Container(
                  margin:EdgeInsets.only(right:10.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(3),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Image.asset("images/salad2.jpeg", 
                        height:120,
                         width:120,
                         fit:BoxFit.cover),
                    
                         SizedBox(width:20.0),
                         Column(children: [
                          Container(
                            width:MediaQuery.of(context).size.width/2,
                            child: Text("Mediteranean chick Salad",
                            style: AppWidget.SemiBoldTextFieldStyle()),
                            
                          ),
                          SizedBox(height:5.0),
                    
                           Container(
                            width:MediaQuery.of(context).size.width/2,
                            child: Text("Honey goot cheese",
                            style: AppWidget.LightTextFieldStyle()),
                            
                          ),
                    
                          Container(
                            width:MediaQuery.of(context).size.width/2,
                            child: Text("\$20",
                            style: AppWidget.SemiBoldTextFieldStyle()),
                            
                          )
                         ],)
                      ],),
                    ),
                  ),
                )
                
          ],
        ),
      ),
    );
  }

  Widget showItem(){
    return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  GestureDetector(
                    onTap: (){
                      pizza=true;
                      burger=false;
                      icecream=false;
                      salad=false;
                      setState(() {
                        
                      });
                    },
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: pizza?const Color.fromARGB(255, 141, 185, 221):Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: EdgeInsets.all(8),
                      child: Image.asset("images/pizza.jpeg", height:50, width:50,fit:BoxFit.cover),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap:(){
                      burger=true;
                      pizza=false;
                      icecream=false;
                      salad=false;
                      setState(() {
                        
                      });
                    },
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: burger?const Color.fromARGB(255, 141, 185, 221):Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: EdgeInsets.all(8),
                      child: Image.asset("images/burger.jpeg", height:50, width:50,fit:BoxFit.cover),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      salad=true;
                      pizza=false;
                      icecream=false;
                      burger=false;
                      setState(() {
                        
                      });
                    },
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: salad?const Color.fromARGB(255, 141, 185, 221):Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: EdgeInsets.all(8),
                      child: Image.asset("images/salad.jpeg", height:50, width:50,fit:BoxFit.cover),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap:(){
                      icecream=true;
                      pizza=false;
                      burger=false;
                      salad=false;
                      setState((){

                      });
                    },
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: icecream?const Color.fromARGB(255, 141, 185, 221):Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: EdgeInsets.all(8),
                      child: Image.asset("images/ice-cream.jpeg", height:50, width:50,fit:BoxFit.cover),
                      ),
                    ),
                  ),
                ],
                );
  }
}
