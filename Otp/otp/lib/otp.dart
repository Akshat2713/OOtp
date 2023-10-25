import 'package:flutter/material.dart';
import 'package:otp/phone.dart';

class MyOtp extends StatefulWidget {
  const MyOtp({super.key});

  @override
  State<MyOtp> createState() => _MyOtpState();
}
class _MyOtpState extends State<MyOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OTP Demo',
      home: OTPScreen(),
    );
  }
}

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade400,
          elevation: 0,
          leading: IconButton(
            onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Myphone(),
                    ));},
            icon: Icon(Icons.arrow_back_ios_rounded),
            color: Colors.black,
          ),
          title: Text('Enter OTP',),
        ),
        body: Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Please enter the OTP sent to your mobile number.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: 200.0,
                    child: TextField(
                      controller: otpController,
                      keyboardType: TextInputType.number,
                      maxLength: 6,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24.0),
                      decoration: InputDecoration(
                        hintText: 'Enter OTP',
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  ElevatedButton(
                    onPressed: () {
                      // Validate the OTP entered by the user
                      String enteredOTP = otpController.text;
                      // Here you can implement the logic to validate the OTP with the server or any other method.
                      // For this example, let's assume the correct OTP is '123456'.
                      if (enteredOTP == '123456') {
                        // Navigate to the next screen or perform the desired action.
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('OTP Verified!'),
                        ));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Invalid OTP. Please try again.'),
                        ));
                      }
                    },
                    child: Text('Verify OTP'),style:ElevatedButton.styleFrom(primary: Colors.green.shade600,shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20)))
                  ),
                ],
              ),
            ),
            ),
    );
    }
}