
import 'package:advanced_bmi/bmi.dart';
import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
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
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Calculate BMI',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.white),),
              SizedBox(height: 16,),
              Image.asset('images/ibm.png'),
              SizedBox(height: 20,),
              Text('WELCOME TO MY PAGE',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.white),),
              SizedBox(height: 30,),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BMI_Calculator()));
                   },
                child: Text('START',style: TextStyle(
                  color: Colors.pink[300],
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                )),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 12.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    primary: Colors.white
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
