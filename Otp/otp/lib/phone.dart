import 'package:flutter/material.dart';
import 'package:otp/otp.dart';

class Myphone extends StatefulWidget {
  const Myphone({super.key});
  @override
  State<Myphone> createState() => _MyphoneState();
}

class _MyphoneState extends State<Myphone> {
  TextEditingController countrycode=TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    countrycode.text="+91";
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        margin: EdgeInsets.only(left: 25,right: 25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Image.asset('assets/Kishann.jpg',width: 250,height: 200,),
              SizedBox(
                height: 20
              ),
              Text('REGISTER',style: TextStyle(
                fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green.shade800),
              ),SizedBox(
                height: 30,
              ),
              Text('Enter Your Details Below',style: TextStyle(fontSize: 18),
              textAlign: TextAlign.left,),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.grey.shade500,),borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,hintText: 'Name'
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // Text('Enter Phone Number',style: TextStyle(fontSize: 16),
              //   textAlign: TextAlign.left,),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Colors.grey.shade500,),borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 35,
                      child: TextField(
                        controller: countrycode,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Text('|',style: TextStyle(
                      fontSize: 33,
                    ),),
                    SizedBox(
                      width: 7,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,hintText: 'Phone Number'
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyOtp(),
                        ));}, child: Text('Get OTP'),style:ElevatedButton.styleFrom(backgroundColor: Colors.green.shade600,shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                )
                ) ,
              )
              )
            ],
          ),
        ),
      ),
    );
  }
}
