import 'package:amazon_clone_project/constants/custom_button.dart';
import 'package:amazon_clone_project/constants/global_variables.dart';
import 'package:amazon_clone_project/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

enum Auth {
  signIn,
  signUp
}

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth_screen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  Auth _auth = Auth.signUp;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _nameController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundColor,
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  ListTile(
                    tileColor: _auth == Auth.signUp
                        ? GlobalVariables.backgroundColor
                        : GlobalVariables.greyBackgroundColor,
                    title: const Text(
                      "Create Account",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    leading: Radio(
                      activeColor: GlobalVariables.secondaryColor,
                      value: Auth.signUp,
                      groupValue: _auth,
                      onChanged: (Auth? val){
                        setState(() {
                          _auth = val!;
                        });
                      },
                    ),
                  ),
                  if (_auth == Auth.signUp)
                    Container(
                      color: GlobalVariables.backgroundColor,
                      child: Form(
                        key: _signUpFormKey,
                        child: Column(
                          children: [
                            CustomTextField(
                                controller: _nameController,
                                hintText: "Name"
                            ),
                            CustomTextField(
                                controller: _emailController,
                                hintText: "E-mail"
                            ),
                            CustomTextField(
                                controller: _passwordController,
                                hintText: "Password"
                            ),
                            CustomButton(
                                text: "Sign Up",
                                onPressed: (){

                                }
                            )
                          ],
                        ),
                      ),
                    ),
                  ListTile(
                    tileColor: _auth == Auth.signIn
                        ? GlobalVariables.backgroundColor
                        : GlobalVariables.greyBackgroundColor,
                    title: const Text(
                      "Sign-In Account",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    leading: Radio(
                      activeColor: GlobalVariables.secondaryColor,
                      value: Auth.signIn,
                      groupValue: _auth,
                      onChanged: (Auth? val){
                        setState(() {
                          _auth = val!;
                        });
                      },
                    ),
                  ),
                  if (_auth == Auth.signIn)
                    Container(
                      color: GlobalVariables.backgroundColor,
                      child: Form(
                        key: _signInFormKey,
                        child: Column(
                          children: [
                            CustomTextField(
                                controller: _emailController,
                                hintText: "E-mail"
                            ),
                            CustomTextField(
                                controller: _passwordController,
                                hintText: "Password"
                            ),
                            CustomButton(
                                text: "Sign In",
                                onPressed: (){

                                }
                            )
                          ],
                        ),
                      ),
                    ),
                ],
              ),
          )
      )
    );
  }
}
