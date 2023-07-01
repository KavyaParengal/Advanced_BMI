
import 'package:advanced_bmi/result.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class BMI_Calculator extends StatefulWidget {
  const BMI_Calculator({Key? key}) : super(key: key);

  @override
  State<BMI_Calculator> createState() => _BMI_CalculatorState();
}

class _BMI_CalculatorState extends State<BMI_Calculator> {

  double weight=50;
  double age=20;
  double height=100;
  late int gender;
  double _value = 0;

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
          title: Center(child: Text('BMI Calculator',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.pink),)),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.22,
                    width: 185,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        Text('Age',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.pink),),
                        SizedBox(height: 8,),
                        Text(age.toStringAsFixed(0).toString(),style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black),),
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
                            SizedBox(width: 15,),
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
                            SizedBox(width: 15,),
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
              padding: const EdgeInsets.only(top: 17,left: 10,right: 10),
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
                    Text(_value.toStringAsFixed(1).toString(),style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black),),
                    SizedBox(height: 8,),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Container(
                    //       width: 40,
                    //       height: 40,
                    //       child: FloatingActionButton(
                    //         child: Icon(Icons.remove,color: Colors.pink,),
                    //         backgroundColor: Colors.white,
                    //         onPressed: () {
                    //           setState(() {
                    //
                    //           });
                    //           height--;
                    //         },
                    //       ),
                    //     ),
                    //     SizedBox(width: 80,),
                    //     Container(
                    //       width: 40,
                    //       height: 40,
                    //       child: FloatingActionButton(
                    //         child: Icon(Icons.add,color: Colors.pink,),
                    //         backgroundColor: Colors.white,
                    //         onPressed: () {
                    //           setState(() {
                    //
                    //           });
                    //           height++;
                    //         },
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    Slider(
                        min: 0,
                        max: 250,activeColor: Colors.pink,
                        value: _value,
                        onChanged: (value){
                          setState(() {
                            _value = value;
                          });
                        }
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 17,left: 10,right: 10),
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
                    SizedBox(height: 13,),
                    Padding(
                      padding: const EdgeInsets.only(left: 16,right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("i'm",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black),),
                          SizedBox(width:40),
                          Text('Female',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                          SizedBox(width:10),
                          ToggleSwitch(
                            minWidth: 60.0,
                            initialLabelIndex: 0,
                            cornerRadius: 20.0,
                            activeFgColor: Colors.white,
                            inactiveBgColor: Colors.grey,
                            inactiveFgColor: Colors.white,
                            totalSwitches: 2,
                            icons: [Icons.female,Icons.male],
                            iconSize: 33,
                            activeBgColors: [[Colors.pink],[Colors.pink]],
                            onToggle: (index) {
                              print('switched to: $index');
                              gender=int.parse(index.toString());
                            },
                          ),
                          SizedBox(width:10),
                          Text('Male',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text('Calculate your body....',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Result(age:age,weight:weight,height:_value,gender: gender)));
              },
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(Icons.favorite,color: Colors.pink[300],size: 45,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
