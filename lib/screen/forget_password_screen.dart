import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ForgetPassordScreen extends StatefulWidget {
  const ForgetPassordScreen({super.key});

  @override
  State<ForgetPassordScreen> createState() => _ForgetPassordScreenState();

  static Route<dynamic> route(RouteSettings routeSettings) {
    return CupertinoPageRoute(
      builder: (_) => ForgetPassordScreen(),
    );
  }
}

class _ForgetPassordScreenState extends State<ForgetPassordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back_ios_new)),
        title: Text("Forget Password",style: TextStyle(fontSize: 20),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                child: Lottie.asset("asset/lottie/1713807815433.json",fit: BoxFit.cover)),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
            Center(
              child: Container(
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
                          hintText: "Enter Username"
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
            Center(
              child: Container(
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
                          hintText: "Enter New Password"
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.035,),
            InkWell(
              onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=> homescreen()));
              },
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                  ),
                  child: Center(child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
