import 'package:doller/header_widget.dart';
import 'package:doller/mainpage.dart';
import 'package:doller/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  bool _securetext=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcb5eee),
      appBar: AppBar(
        elevation: 0,
        title: Text("Doller",style: TextStyle(fontFamily: 'BalooDa2-Medium'),),
        backgroundColor: Color(0xffcb5eee),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none_sharp))
        ],
      ),

      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(height: 60,),
            Container(
              child: Image.asset("images/money_bag_127px.png"),
            ),
            Divider(),
            ListTile(
              title: Text("Profile",style: TextStyle(fontFamily: 'BalooDa2-Medium'),),
              leading: Icon(Icons.account_circle_outlined),
            ),
            ListTile(
              title: Text("Wallet",style: TextStyle(fontFamily: 'BalooDa2-Medium'),),
              leading: Icon(Icons.account_balance_wallet_outlined),
            ),
            ListTile(
              title: Text("Payment History",style: TextStyle(fontFamily: 'BalooDa2-Medium'),),
              leading: Icon(Icons.payments_outlined ),
            ),
            ListTile(
              title: Text("Support Group",style: TextStyle(fontFamily: 'BalooDa2-Medium'),),
              leading: Icon(Icons.support_outlined),
            ),
            ListTile(
              title: Text("Developer",style: TextStyle(fontFamily: 'BalooDa2-Medium'),),
              leading: Icon(Icons.code_outlined),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100,),
            Stack(
              alignment: Alignment.topCenter,
              clipBehavior: Clip.none,
              children: [
                Center(
                  child: Container(
                    height: 400,
                    width: 330,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: 60,),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: "Enter Mobile",
                                  hintStyle: TextStyle(fontFamily: 'BalooDa2-Medium',fontSize: 18),
                                  fillColor: Colors.white,
                                  filled: true,
                                  contentPadding: EdgeInsets.fromLTRB(10, 10, 20, 0),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100),
                                    borderSide: BorderSide(color: Colors.grey)
                                  ),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(100),
                                        borderSide: BorderSide(color: Colors.grey)
                                    ),
                                  prefixIcon: Icon(Icons.phone_outlined)
                                ),
                                keyboardType: TextInputType.number
                              ),
                              SizedBox(height: 20,),
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "Enter Password",
                                    hintStyle: TextStyle(fontFamily: 'BalooDa2-Medium',fontSize: 18),
                                    fillColor: Colors.white,
                                    filled: true,
                                    contentPadding: EdgeInsets.fromLTRB(10, 10, 20, 0),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(100),
                                        borderSide: BorderSide(color: Colors.grey)
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(100),
                                        borderSide: BorderSide(color: Colors.grey)
                                    ),
                                    prefixIcon: Icon(Icons.lock_outlined),
                                  suffixIcon: IconButton(onPressed: (){
                                    setState(() {
                                      _securetext=!_securetext;
                                    });
                                    }, icon: Icon(_securetext?Icons.visibility_off_outlined : Icons.remove_red_eye_outlined))
                                ),
                                obscureText: _securetext,
                              )
                              ,
                              Row(
                                children: [
                                  SizedBox(width: 160,),
                                  TextButton(onPressed: (){},
                                      child: Text("Forget Password?",style: TextStyle(fontFamily: 'BalooDa2-Medium'),))
                                ],
                              ),
                              FlatButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>mainpage()));

                              },
                                child: Text("LOGIN",style: TextStyle(color: Colors.white70,
                                    fontSize: 17,fontWeight: FontWeight.bold,fontFamily: 'BalooDa2-Medium',letterSpacing: 1),),
                                color: Color(0xffcb5eee),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)
                                ),
                                minWidth: 140,
                              ),
                              //SizedBox(height: 7,),
                              Text("Don't have an account?",style: TextStyle(fontFamily: 'BalooDa2-Medium'),),
                              //SizedBox(height: 7,),
                              FlatButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));
                              },
                                child: Text("SIGN UP",style: TextStyle(color: Colors.white70,
                                    fontSize: 17,fontWeight: FontWeight.bold,fontFamily: 'BalooDa2-Medium',letterSpacing: 1),),
                                color: Color(0xffcb5eee),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                minWidth: 140,
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: -50,
                    child: CircleAvatar(maxRadius: 50,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("images/download.jpg"),)),

              ]
            ),

          ],
        ),
      ),

    );
  }
}
