import 'package:flutter/material.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey = GlobalKey<FormState>();

  bool hidePassword = true;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff4A90E2),
              Color(0xff7B61FF),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),

              child: Container(

                padding: const EdgeInsets.all(25),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),

                child: Form(
                  key: _formKey,

                  child: Column(
                    children: [

                      const Icon(
                        Icons.flutter_dash,
                        size: 90,
                        color: Colors.blue,
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        "Welcome Back",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 8),

                      const Text(
                        "Login to continue",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),

                      const SizedBox(height: 35),

                      TextFormField(
                        controller: emailController,

                        decoration: InputDecoration(
                          labelText: "Email",
                          prefixIcon:
                          const Icon(Icons.email),

                          border:
                          OutlineInputBorder(
                            borderRadius:
                            BorderRadius.circular(
                                15),
                          ),
                        ),

                        validator: (value) {

                          if (value == null ||
                              value.isEmpty) {
                            return "Enter Email";
                          }

                          if (!RegExp(
                              r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$')
                              .hasMatch(value)) {
                            return "Invalid Email";
                          }

                          return null;
                        },
                      ),

                      const SizedBox(height: 20),

                      TextFormField(
                        controller:
                        passwordController,

                        obscureText:
                        hidePassword,

                        decoration: InputDecoration(
                          labelText:
                          "Password",

                          prefixIcon:
                          const Icon(
                              Icons.lock),

                          suffixIcon:
                          IconButton(
                            icon: Icon(
                              hidePassword
                                  ? Icons
                                  .visibility
                                  : Icons
                                  .visibility_off,
                            ),

                            onPressed: () {
                              setState(() {
                                hidePassword =
                                !hidePassword;
                              });
                            },
                          ),

                          border:
                          OutlineInputBorder(
                            borderRadius:
                            BorderRadius.circular(
                                15),
                          ),
                        ),

                        validator: (value) {
                          if (value ==
                              null ||
                              value.isEmpty) {
                            return "Enter Password";
                          }

                          return null;
                        },
                      ),

                      Align(
                        alignment:
                        Alignment.centerRight,

                        child: TextButton(
                          onPressed: () {},

                          child: const Text(
                            "Forgot Password?",
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      SizedBox(
                        width: double.infinity,

                        height: 55,

                        child:
                        ElevatedButton(

                          style:
                          ElevatedButton
                              .styleFrom(
                            shape:
                            RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius
                                  .circular(
                                  16),
                            ),
                          ),

                          onPressed: () {

                            if (_formKey
                                .currentState!
                                .validate()) {

                              Navigator.push(
                                context,

                                MaterialPageRoute(
                                  builder:
                                      (_) =>
                                      HomeScreen(
                                        email:
                                        emailController
                                            .text,
                                      ),
                                ),
                              );
                            }
                          },

                          child:
                          const Text(
                            "LOGIN",
                            style:
                            TextStyle(
                              fontSize:
                              18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}