import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:studyapp/src/login/SignUp.dart';

class Login1 extends StatefulWidget {
  const Login1({Key? key});

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    // Set the container width and height based on screen size
    double containerWidth = screenSize.width * 1; // 90% of the screen width
    double containerHeight = screenSize.height * 0.5;
    final _formfield = GlobalKey<FormState>();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    bool passToggle = true;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        decoration: const BoxDecoration(color: Colors.blue),
                        width: containerWidth, // Set the width
                        height: containerHeight,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: containerWidth, // Set the width of the rectangle
                        height: 100, // Set the height of the rectangle
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                    70)) // Set the border width (optional)
                            ),
                        // Set border radius (optional)
                      ),
                    ),
                    const Positioned(
                        left: 150,
                        bottom: 0,
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Login',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF1F1F39),
                                fontSize: 32,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            )))
                  ],
                ),
                const SizedBox(
                  height: 44.0,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          label: Text('user Email'),
                          prefixIcon: Icon(
                            Icons.mail,
                            color: Colors.black,
                          )),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      label: Text('password'),
                      prefixIcon: Icon(
                        Icons.security,
                        color: Colors.black,
                      ),
                      // suffix: InkWell(
                      //   onTap: () {
                      //     setState(() {
                      //       passToggle = !passToggle;
                      //     });
                      //   },
                      // )
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Don’t have an account? ',
                          style: TextStyle(
                            color: Color(0xFF858597),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: 'Sign up',
                          style: const TextStyle(
                            color: Color(0xFF3D5CFF),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Navigate to the sign-up screen when "Sign up" is tapped
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()),
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
