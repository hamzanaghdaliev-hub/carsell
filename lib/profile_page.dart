import 'package:carsell/widgets/hi_name_surname.dart';
import 'package:carsell/widgets/profile_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Profile"),
        centerTitle: true,
      ),
      body:
         SingleChildScrollView(
           child: Column(
            children: [
              SizedBox(height: 20,),
              HiNameSurname(name: "Hamza", surname: "Naghdaliyev"),
                SizedBox(height: 30,),
               ProfileBar(image: Icons.mail, title: "Email", description: "user@example.com",),
               SizedBox(height: 20,),
               ProfileBar(image: Icons.phone, title: "Phone", description: "123-456-7890drete"),
                SizedBox(height: 20,),
                ProfileBar(image: IconlyLight.location, title: "Address", description: "123 Main St, Anytown, USA"),
                 SizedBox(height: 40,),
                 ProfileBar(image: IconlyBold.category, title: "My cars", description: "2 cars"),
                  SizedBox(height: 20,),
                  ProfileBar(image: IconlyLight.document, title: "About cars", description: "Explore these cars"),
                   SizedBox(height: 20,),
                   ProfileBar(image: IconlyLight.password, title: "Forgot Password", description: "Reset your password"),
                    SizedBox(height: 20,),
                    ProfileBar(image: IconlyLight.setting, title: "Settings", description: "Privacy, Security, etc."),
                     SizedBox(height: 40,),
                      ProfileBar(image: IconlyLight.logout, title: "Logout", description: "Sign out of your account"),
            ],
                   ),
         ),
      
    );
  }
}