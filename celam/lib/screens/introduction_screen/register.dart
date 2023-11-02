import 'package:celam/screens/introduction_screen/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _pinController = TextEditingController();
  final TextEditingController _checkPinController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/bg3.png'),
            fit: BoxFit.cover
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Daftar',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
              Container(
                width: 240,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)
                  ),
                  color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        'Username',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      TextFormField(
                        controller: _usernameController,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(12)
                        ],
                        decoration: InputDecoration(
                          hintText: 'Your name',
                          prefixIcon: Icon(Icons.person),
                          prefixIconColor: Color(0xFF255e36),
                        ),
                      ),
                      SizedBox(height: 16,),
                      Text(
                        'PIN',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      TextFormField(
                        controller: _pinController,
                        obscureText: true,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(6)
                        ],
                        decoration: InputDecoration(
                          hintText: '****',
                          prefixIcon: Icon(Icons.password),
                          prefixIconColor: Color(0xFF255e36)
                        )
                      ),
                      SizedBox(height: 16,),
                      Text(
                        'Verify PIN',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      TextFormField(
                        controller: _checkPinController,
                        obscureText: true,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(6)
                        ],
                        decoration: InputDecoration(
                          hintText: '****',
                          prefixIcon: Icon(Icons.password),
                          prefixIconColor: Color(0xFF255e36)
                        )
                      ),
                      SizedBox(height: 16,),
                      ElevatedButton(
                        onPressed: () {

                        },
                        child: Icon(
                          Icons.send,
                        ),
                      ),
                      // SizedBox(height: 20,),
                      TextButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => IntroductionScreen())
                          );
                        },
                        child: Text(
                          'Punya akun?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}