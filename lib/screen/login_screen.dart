import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hr_manage/helper/colors.dart';
import 'package:lottie/lottie.dart';

import 'dashboard_screen.dart';
import 'forget_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();

  static Route<dynamic> route(RouteSettings routeSettings) {
    return CupertinoPageRoute(
      builder: (_) => LoginScreen(),
    );
  }
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
            Container(
              height: MediaQuery.of(context).size.height * 0.42,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Lottie.asset("asset/lottie/1713695717592.json",fit: BoxFit.cover)),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
            Center(
                child: Text("Login",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline
                  ),)
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Username"
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password"
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.015,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPassordScreen(),));
              },
              child: Container(
                alignment: Alignment.centerRight,
                height: 18,
                width: MediaQuery.of(context).size.width * 0.85,
                child: Text("Forgot Password?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
            Center(
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> DashboardScreen()));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.primaryColor,
                  ),
                  child: Center(child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
