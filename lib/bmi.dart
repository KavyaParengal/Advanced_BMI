
import 'package:flutter/material.dart';

class BMI_Calculator extends StatefulWidget {
  const BMI_Calculator({Key? key}) : super(key: key);

  @override
  State<BMI_Calculator> createState() => _BMI_CalculatorState();
}

class _BMI_CalculatorState extends State<BMI_Calculator> {

  double weight=0;
  double age=0;
  double height=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.lightGreen, Colors.pinkAccent])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Center(child: Text('IBM Calculator',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.pink),)),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 16,right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.22,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        Text('Age',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.pink),),
                        SizedBox(height: 8,),
                        Text(age.toString(),style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 3,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              child: FloatingActionButton(
                                child: Icon(Icons.remove,color: Colors.pink,),
                                backgroundColor: Colors.white,
                                onPressed: () {
                                  setState(() {

                                  });
                                  age--;
                                },
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              width: 40,
                              height: 40,
                              child: FloatingActionButton(
                                child: Icon(Icons.add,color: Colors.pink,),
                                backgroundColor: Colors.white,
                                onPressed: () {
                                  setState(() {

                                  });
                                  age++;
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height*0.22,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        Text('Weight(kg)',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.pink),),
                        SizedBox(height: 8,),
                        Text(weight.toString(),style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 3,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              child: FloatingActionButton(
                                child: Icon(Icons.remove,color: Colors.pink,),
                                backgroundColor: Colors.white,
                                onPressed: () {
                                  setState(() {

                                  });
                                  weight--;
                                },
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              width: 40,
                              height: 40,
                              child: FloatingActionButton(
                                child: Icon(Icons.add,color: Colors.pink,),
                                backgroundColor: Colors.white,
                                onPressed: () {
                                  setState(() {

                                  });
                                  weight++;
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 17,left: 16,right: 16),
              child: Container(
                height: MediaQuery.of(context).size.height*0.24,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Height(cm)',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.pink),),
                    SizedBox(height: 8,),
                    Text(height.toString(),style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black),),
                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          child: FloatingActionButton(
                            child: Icon(Icons.remove,color: Colors.pink,),
                            backgroundColor: Colors.white,
                            onPressed: () {
                              setState(() {

                              });
                              height--;
                            },
                          ),
                        ),
                        SizedBox(width: 70,),
                        Container(
                          width: 40,
                          height: 40,
                          child: FloatingActionButton(
                            child: Icon(Icons.add,color: Colors.pink,),
                            backgroundColor: Colors.white,
                            onPressed: () {
                              setState(() {

                              });
                              height++;
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 17,left: 16,right: 16),
              child: Container(
                height: MediaQuery.of(context).size.height*0.17,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Gender',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.pink),),
                    SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.only(left: 16,right: 16),
                      child: Row(
                        children: [
                          Text("i'm",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black),),
                          Text('Female',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                          Text('Male',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                        ],
                      ),
                    )
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
