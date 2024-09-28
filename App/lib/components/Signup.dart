import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pfe_app/Nav.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  final _formkey = GlobalKey<FormState>();
  final password = '';
  bool isPasswordVisible = false;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          SizedBox(
            height: 300,
          ),
          Container(
            height: 50,
            width: 320,
            margin: EdgeInsets.only(left: 10),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) return 'please fill name field';
              },
              style: GoogleFonts.ubuntuCondensed(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.white70,
              ),
              textInputAction: TextInputAction.done,
              controller: nameController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 5,
                      color: Color(0xff0D553E),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 5,
                      color: Color(0xff0D553E),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                alignLabelWithHint: true,
                hintText: 'Your Name',
                hintStyle: GoogleFonts.ubuntuCondensed(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff0D553E),
                ),
                filled: true,
                fillColor: Color(0xff098256),
                prefixIcon: Icon(
                  Icons.text_fields,
                  color: Color(0xff0D553E),
                ),
                suffixIcon: IconButton(
                  color: Color(0xff0D553E),
                  icon: Icon(Icons.close),
                  onPressed: () => nameController.clear(),
                ),
              ),
            ),
          ),
          //----------------------------------------------------------------
          SizedBox(
            height: 20,
          ),
          //----------------------------------------------------------------
          Container(
            height: 50,
            width: 320,
            margin: EdgeInsets.only(left: 10),
            child: TextFormField(
              style: GoogleFonts.ubuntuCondensed(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.white70,
              ),
              validator: (value) {
                if (value!.isEmpty) return 'please fill email field';
              },
              textInputAction: TextInputAction.done,
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 5,
                      color: Color(0xff0D553E),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 5,
                      color: Color(0xff0D553E),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                alignLabelWithHint: true,
                hintText: 'name@example.com',
                hintStyle: GoogleFonts.ubuntuCondensed(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff0D553E),
                ),
                filled: true,
                fillColor: Color(0xff098256),
                prefixIcon: Icon(
                  Icons.mail,
                  color: Color(0xff0D553E),
                ),
                suffixIcon: IconButton(
                  color: Color(0xff0D553E),
                  icon: Icon(Icons.close),
                  onPressed: () => emailController.clear(),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //-----------------------------------------------------------------------------------
          Container(
            height: 50,
            width: 320,
            margin: EdgeInsets.only(left: 10),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) return 'please fill password field';
              },
              style: GoogleFonts.ubuntuCondensed(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.white70,
              ),
              textInputAction: TextInputAction.done,
              controller: passwordController,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 5,
                      color: Color(0xff0D553E),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 5,
                      color: Color(0xff0D553E),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                alignLabelWithHint: true,
                hintText: 'Password',
                hintStyle: GoogleFonts.ubuntuCondensed(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff0D553E),
                ),
                filled: true,
                fillColor: Color(0xff098256),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color(0xff0D553E),
                ),
                suffixIcon: IconButton(
                  color: Color(0xff0D553E),
                  icon: isPasswordVisible
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                  onPressed: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                ),
              ),
              obscureText: isPasswordVisible,
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Container(
            margin: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff0D553E),
            ),
            height: 50,
            width: 150,
            child: Padding(
              padding: const EdgeInsets.all(5.5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xff098256),
                ),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      if (_formkey.currentState!.validate()) {
                        final result = FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: emailController.text,
                                password: passwordController.text);
                        if (result != null) {
                          print(result);
                        } else
                          print('a problem occured');
                      }
                    },
                    child: Text(
                      ' Done',
                      style: GoogleFonts.sairaExtraCondensed(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
