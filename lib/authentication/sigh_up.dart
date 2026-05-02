import 'package:card_swiper/card_swiper.dart';
import 'package:carsell/widgets/botton_widgets.dart';
import 'package:carsell/widgets/input_textfield.dart';
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
      body: Stack(
        children: [
          Swiper(
            duration: 1500,
            autoplayDelay: 8000,
            itemBuilder: (BuildContext context,int index)
            {
              return Image.asset("assets/pexels-photo-1545743.jpeg",fit: BoxFit.contain,);
            },
            autoplay: true,
           itemCount: 1),
           Container(
            color: Colors.black.withOpacity(0.7),
           ),
         
          SingleChildScrollView(
            child: Padding(
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
                InputTextfield(text2: "Full Name", inputTextController: _fullNameTextController),
                  SizedBox(height: 12),
                  InputTextfield(text2: "Email", inputTextController: _emailTextController),
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
                  InputTextfield(text2: "Address", inputTextController: _addressTextController),
                  SizedBox(height: 12,),
                  InputTextfield(text2: "Phone Number", inputTextController: _phoneNumberTextController),
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
          ),
        ],
      ),
    ); 
  }
}
