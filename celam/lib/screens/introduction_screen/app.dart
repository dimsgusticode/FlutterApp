import 'package:celam/screens/introduction_screen/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IntroductionScreen extends StatelessWidget {
  IntroductionScreen({super.key});

  final _pageController = PageController(initialPage: 0);
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageView(
        controller: _pageController,
        children: [
          // Halaman pertama
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background/bg1.png'),
                fit: BoxFit.cover
              )
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/images/celam_logo.png'),
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 64,),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          // Halaman kedua
          Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background/bg2.png'),
                fit: BoxFit.cover
              )
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'CELAM',
                    style: TextStyle(
                      fontSize: 48,
                      color: Color(0xFF255e36),
                      fontFamily: 'KemasyuranJawa'
                    ),
                  ),
                  Text(
                    'Solusi Pintar Keuangan Anda',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xFF255e36),
                      fontFamily: 'OpenSans'
                    ),
                  ),
                  SizedBox(height: 64,),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF255e36),
                  ),
                ],
              ),
            ),
          ),
          // Halaman ketiga
          Container(
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
                    'Masuk',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  Container(
                    width: 240,
                    height: 320,
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
                              LengthLimitingTextInputFormatter(4)
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
                              Icons.login,
                              color: Colors.black,
                            ),
                          ),
                          // SizedBox(height: 20,),
                          TextButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Signup())
                              );
                            },
                            child: Text(
                              'Akun baru?',
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
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _pageController.animateToPage(
            3,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut
          );
        },
        child: Text(
          'Masuk',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}