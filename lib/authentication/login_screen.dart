import 'package:card_swiper/card_swiper.dart';
import 'package:carsell/services/global_methods.dart';
import 'package:carsell/widgets/botton_widgets.dart';
import 'package:carsell/widgets/input_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() =>
      _LoginScreenState();
}

class _LoginScreenState
    extends State<LoginScreen> {
  final _emailTextController =
      TextEditingController();
  final _passwordTextController =
      TextEditingController();
  var __obscureText = true;
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;



  void _submitFormOnLogin() async {
    final isValid = _formKey.currentState!.validate();
    FocusScope.of(context).unfocus();

    if (isValid) {
      _formKey.currentState!.save();
      setState(() {
        _isLoading = true;
      });
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: _emailTextController.text.toLowerCase().trim(),
            password: _passwordTextController.text.trim());
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) =>  Container(),
          ),
        );
        print('Succefully logged in');

        //       // To create errorDialog
      } on FirebaseException catch (error) {
        GlobalMethods.errorDialog(
            subtitle: '${error.message}', context: context);
        setState(() {
          _isLoading = false;
        });
      } catch (error) {
        GlobalMethods.errorDialog(subtitle: '$error', context: context);
        setState(() {
          _isLoading = false;
        });
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }




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
                    "To the Carsell app",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 30),
                 InputTextfield(text2: "Email", inputTextController: _emailTextController),
                  SizedBox(height: 12),
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
                  SizedBox(height: 60,),
                  Center(
                    child: ButtonWidgets(text1: "Login")
                  ),
                    SizedBox(height: 20,), 
                    Text("Sign up",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
