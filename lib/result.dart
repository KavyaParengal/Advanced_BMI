
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
    //ponderal_index();
  }
  late double bmi;
  late double ponderal;
  String status='';
  bmi_calculate(){
    //bmi=widget.weight / (widget.height * widget.height);
    bmi=(widget.weight / widget.height / widget.height ) * 10000;
    print(bmi);
  }
  bmi_status(){
    if(bmi<18.5)
      status = 'UNDER WEIGHT';
    else if(bmi>=18.5 && bmi<=24.9)
      status = 'NORMAL';
    else if(bmi>=25 && bmi<=29.9)
      status = 'OVER WEIGHT';
    else
      status = 'OBESITY';
  }

  // ponderal_index(){
  //   if(int.parse(widget.age)>=16){
  //     ponderal= (widget.weight/1000)/ (widget.height*widget.height*widget.height);
  //   }
  //   else{
  //     ponderal= widget.weight/ (widget.height*widget.height*widget.height);
  //     print(ponderal);
  //   }
  // }

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
          title: Center(child: Text('BMI Calculator',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.pink),)),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(
            children: [
              SizedBox(height: 130,),
              Container(
                height: MediaQuery.of(context).size.height*0.4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Text('Your BMI Result',style: TextStyle(
                      color: Colors.pink,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    )),
                    SizedBox(height: 17,),
                    Text(bmi.toStringAsFixed(1),style: TextStyle(
                      color: Colors.black,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    )),
                    SizedBox(height: 10,),
                    Text(status,style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                    SizedBox(height: 10,),
                    Text('Normal BMI range : 18.5 - 24.9',style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                    SizedBox(height: 10,),
                    Text('Ponderal Index :',style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                    SizedBox(height: 24,),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>BMI_Calculator()));
                      },
                      child: Text('Recalculate BMI',style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      )),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 12.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          primary: Colors.pink[400]
                      ),
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
