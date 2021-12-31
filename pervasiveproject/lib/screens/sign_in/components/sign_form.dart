import 'package:flutter/material.dart';
import 'package:pervasiveproject/components/custom_surfix_icon.dart';
import 'package:pervasiveproject/components/default_button.dart';
import 'package:pervasiveproject/components/form_error.dart';
import 'package:pervasiveproject/screens/login_success/login_success_screen.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  // const ({ Key? key }) : super(key: key);
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool? remember = false;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey, 
      child: Column(
        children: [
          buildEmailFormField(),
          // manage space between email and password field
          SizedBox(height: getProportionateScreenHeight(20)),

          buildPasswordFormField(),

          SizedBox(height: getProportionateScreenHeight(20)),
          
          // create remember me check box and forgot password
          // skip forgot password
          Row(
            children: [
              Checkbox(
                value: remember, 
                activeColor: kPrimaryColor,
                onChanged: (value){
                  setState(() {
                    remember = value;

                  });
                },
                ),
              Text("Remember me"),
              Spacer(),
              Text(
                "Forgot Password",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              )
            ],
          ),

          // create error
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),

          // create button
          DefaultButton(
            text: "Login", 
            press: (){
              // validator 
              if(_formKey.currentState!.validate()){
                _formKey.currentState!.save();

                // if valid, we go to the success screen
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
            ),

      ],
      ),
      
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField( // password
          obscureText: true,
          onSaved: (newValue) => password = newValue,
          onChanged: (value){
            if (value.isNotEmpty && errors.contains(kPassNullError)){
              setState(() {
                errors.remove(kPassNullError);
              });
            } else if (value.length >= 8 && errors.contains(kShortPassError)){
              setState(() {
                errors.remove(kShortPassError);
              });
            }
            return null;
          },

          // create validator
          validator: (value){
            if (value!.isEmpty && !errors.contains(kPassNullError)){
              setState(() {
                errors.add(kPassNullError);
              });
              return "";
            } else if (value.length < 8 && !errors.contains(kShortPassError)){
              setState(() {
                errors.add(kShortPassError);
              });
              return "";
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: "Password",
            hintText: "Enter your password",
            floatingLabelBehavior: FloatingLabelBehavior.always,

            // create icon password 
            suffixIcon: CustomSurffixIcon(        
              svgIcon: "assets/icons/Lock.svg"
              ),
          ),
        );
  }

  TextFormField buildEmailFormField() {
    return TextFormField( // email
          keyboardType: TextInputType.emailAddress, // keyboard type for email
          onSaved: (newValue) => email = newValue,
          onChanged: (value){
            if (value.isNotEmpty && errors.contains(kEmailNullError)){
              setState(() {
                errors.remove(kEmailNullError);
              });
            } else if (emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError)){
              setState(() {
                errors.remove(kInvalidEmailError);
              });
            }
            return null;
          },

          // create validator 
          validator: (value){
            if (value!.isEmpty && !errors.contains(kEmailNullError)){
              setState(() {
                errors.add(kEmailNullError);
              });
              return "";
            } else if (!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError)){
              setState(() {
                errors.add(kInvalidEmailError);
              });
              return "";
            }
            return null;
          },

          decoration: InputDecoration(
            labelText: "Email",
            hintText: "Enter your email",
            floatingLabelBehavior: FloatingLabelBehavior.always,

            // create icon email 
            suffixIcon: CustomSurffixIcon(        
              svgIcon: "assets/icons/Mail.svg"
              ),
          ),
        );
  }
}

