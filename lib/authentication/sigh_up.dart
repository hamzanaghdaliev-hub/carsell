import 'package:carsell/widgets/botton_widgets.dart';
import 'package:flutter/material.dart';

class SighUp extends StatefulWidget {
  const SighUp({super.key});

  @override
  State<SighUp> createState() =>
      _SighUpState();
}

class _SighUpState extends State<SighUp> {
   final _emailTextController =
      TextEditingController();
  final _passwordTextController =
      TextEditingController();
       final _addressTextController =
      TextEditingController();
       final _fullNameTextController =
      TextEditingController();
       final _phoneNumberTextController =
      TextEditingController();
  var __obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "To the flutter app devolepment lesson",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 12),
            TextFormField(
              controller:
                  _fullNameTextController,
              keyboardType:
                  TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Full Name",
                hintStyle: TextStyle(
                  color:
                      const Color.fromARGB(
                        255,
                        0,
                        0,
                        0,
                      ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                enabledBorder:
                    OutlineInputBorder(
                      borderSide: BorderSide(
                        color:
                            const Color.fromARGB(
                              255,
                              255,
                              17,
                              0,
                            ),
                      ),
                    ),
              ),
            ),
            SizedBox(height: 12),
            TextFormField(
              controller:
                  _emailTextController,
              keyboardType:
                  TextInputType.text,
              decoration: InputDecoration(
             
                hintText: "Email",
                hintStyle: TextStyle(
                  color:
                      const Color.fromARGB(
                        255,
                        0,
                        0,
                        0,
                      ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                enabledBorder:
                    OutlineInputBorder(
                      borderSide: BorderSide(
                        color:
                            const Color.fromARGB(
                              255,
                              255,
                              17,
                              0,
                            ),
                      ),
                    ),
              ),
            ),
            SizedBox(height: 12,),
            TextFormField(
              controller:
                  _passwordTextController,
                  obscureText: __obscureText,
              keyboardType:
                  TextInputType.text,
              decoration: InputDecoration(
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      __obscureText =
                          !__obscureText;
                    });
                  },
                  child: Icon(
                    __obscureText?
                    Icons.visibility_off:Icons.visibility,
                    
                  ),
                ),
                hintText: "Password",
                hintStyle: TextStyle(
                  color:
                      const Color.fromARGB(
                        255,
                        0,
                        0,
                        0,
                      ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                enabledBorder:
                    OutlineInputBorder(
                      borderSide: BorderSide(
                        color:
                            const Color.fromARGB(
                              255,
                              255,
                              17,
                              0,
                            ),
                      ),
                    ),
              ),
            ),
            SizedBox(height: 12,),
            TextFormField(
              controller:
                  _addressTextController,
              keyboardType:
                  TextInputType.text,
              decoration: InputDecoration(
              
                hintText: "Address",
                hintStyle: TextStyle(
                  color:
                      const Color.fromARGB(
                        255,
                        0,
                        0,
                        0,
                      ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                enabledBorder:
                    OutlineInputBorder(
                      borderSide: BorderSide(
                        color:
                            const Color.fromARGB(
                              255,
                              255,
                              17,
                              0,
                            ),
                      ),
                    ),
              ),
            ),
            SizedBox(height: 12,),
            TextFormField(
              controller:
                  _phoneNumberTextController,
              keyboardType:
                  TextInputType.text,
              decoration: InputDecoration(
                hintText: "Phone Number",
                hintStyle: TextStyle(
                  color:
                      const Color.fromARGB(
                        255,
                        0,
                        0,
                        0,
                      ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                enabledBorder:
                    OutlineInputBorder(
                      borderSide: BorderSide(
                        color:
                            const Color.fromARGB(
                              255,
                              255,
                              17,
                              0,
                            ),
                      ),
                    ),
              ),
            ),
            SizedBox(height: 50,),   
              ButtonWidgets(text1: "Sigh up"),
              SizedBox(height: 12,),
              RichText(text: 
              TextSpan(
                text: "Already Have a user?",
                children: <TextSpan>[
                  TextSpan(
                    text: " Sigh in",style: TextStyle(color: Colors.blue),
                  )
                ]
              )
              )
          ],
        ),
      ),
    ); 
  }
}
