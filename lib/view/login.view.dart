import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food/Utils/global.colors.dart';
import 'package:food/view/widgets/text.form.dart';
class LoginView extends StatelessWidget {
  LoginView({super.key});
  final TextEditingController emailController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Logo',
                    style: TextStyle(
                      color:GlobalColors.mainColor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                ),
                const SizedBox(height: 50,),
                  Text(
                     'Login to your account',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                   color:GlobalColors.textColor,
                   fontSize: 25,
                   fontWeight: FontWeight.w500,
                  ),
                  ),
                  const SizedBox(height: 15,),
                  /// Email Input 
                  TextForm(controller: emailController, 
                  text:'Email',
                  obscure: false,
                  textInputType: TextInputType.emailAddress 
                  ),
                  const SizedBox(height: 6,),
                  /// password Input
                  TextForm(controller: emailController, 
                  text: "Password",
                   textInputType: TextInputType.text, 
                   obscure: true)
              ],
            ),
          ),
        ),
      ),

    );
    }
}