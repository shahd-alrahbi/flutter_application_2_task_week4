import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final Color _color1 = Color(0xFFD9D9D9);
  final Color _color2 = Color(0xFF1930AD);
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            height: size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /// PhoneNUmber
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: size.width / 3,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color: _color1),
                              child: const CountryCodePicker(
                                onChanged: print,
                                initialSelection: 'OM',
                                showCountryOnly: false,
                                showOnlyCountryWhenClosed: false,
                                alignLeft: false,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: size.width / 2,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(13),
                                    color: _color1),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: TextFormField(
                                    controller: _controller,
                                    keyboardType: TextInputType
                                        .number, // Set the keyboard type to number
                                    decoration: const InputDecoration.collapsed(
                                        hintText: 'Enter phone number',
                                        hintStyle: TextStyle(fontSize: 13)),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),

                      ///  OTP
                      OtpPinField(
                          onSubmit: (value) {},
                          onChange: (value) {},
                          otpPinInputCustom: "*"),
                      const SizedBox(
                        height: 50,
                      ),

                      ///
                      Container(
                        width: 250,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: _color2),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20),
                          child: Center(
                            child: Text(
                              "Continue",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      /// OR
                      const Text('--------------- OR ---------------'),
                      const SizedBox(
                        height: 20,
                      ),

                      /// Apple

                      Container(
                        width: 250,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: _color1),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Image.asset('assets/img.png')
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 0),
                                child: FaIcon(
                                  FontAwesomeIcons.apple,
                                  color: Colors.black,
                                  size: 20,
                                ),
                              ),
                              Center(
                                child: Text(
                                  "Continue with Apple",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      /// Google
                      Container(
                        width: 250,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: _color1),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Image.asset('assets/img.png')
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 0),
                                child: FaIcon(
                                  FontAwesomeIcons.google,
                                  color: Colors.black,
                                  size: 20,
                                ),
                              ),
                              Center(
                                child: Text(
                                  "Continue with Google",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                /// Terms

                const Positioned(
                  bottom: 1,
                  child: Text(
                    "All the terms and conditions saved by Tarshly team",
                    style: TextStyle(fontSize: 12),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
