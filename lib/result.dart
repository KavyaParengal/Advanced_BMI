
import 'package:advanced_bmi/bmi.dart';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  final age,weight,height,gender;

  Result({required this.age,required this.weight,required this.height,required this.gender});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bmi_calculate();
    bmi_status();
  }
  late double bmi;
  String status='';
  bmi_calculate(){
    bmi=(widget.weight / widget.height / widget.height ) * 10000;
    print(bmi);
  }
  bmi_status(){
    if(bmi<18.5) {
      status = 'UNDER WEIGHT';
    } else if(bmi>=18.5 && bmi<=24.9) {
      status = 'NORMAL';
    } else if(bmi>=25 && bmi<=29.9) {
      status = 'OVER WEIGHT';
    } else {
      status = 'OBESITY';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.lightGreen, Colors.pinkAccent])
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Center(
              child: Text('BMI Calculator',style:
                TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.pink),
              )
          ),
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          },
            icon: const Icon(Icons.arrow_back),color: Colors.pink,),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(
            children: [
              const SizedBox(height: 130,),
              Container(
                height: MediaQuery.of(context).size.height*0.4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22)
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    const Text('Your BMI Result',style: TextStyle(
                      color: Colors.pink,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    )),
                    const SizedBox(height: 17,),
                    Text(bmi.toStringAsFixed(1),style: const TextStyle(
                      color: Colors.black,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    )),
                    const SizedBox(height: 10,),
                    Text(status,style: const TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                    const SizedBox(height: 10,),
                    const Text('Normal BMI range : 18.5 - 24.9',style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                    const SizedBox(height: 56,),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const BMI_Calculator()));
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 12.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          primary: Colors.pink[400]
                      ),
                      child: const Text('Recalculate BMI',style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
