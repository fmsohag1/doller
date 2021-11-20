import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool _securetext=true;
  bool _securetext1=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcb5eee),
      appBar: AppBar(
        elevation: 0,
        title: Text("Sign Up",style: TextStyle(fontFamily: 'BalooDa2-Medium'),),
        backgroundColor: Color(0xffcb5eee),
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
                    height: 500,
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
                                      hintText: "Enter Your Name",
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
                                      prefixIcon: Icon(Icons.person_outline_outlined )
                                  ),

                              ),
                              SizedBox(height: 20,),
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
                                      }, icon: Icon(_securetext?Icons.visibility_off_outlined :
                                      Icons.remove_red_eye_outlined))
                                  ),
                                obscureText: _securetext,
                              ),
                              SizedBox(height: 20,),
                              TextField(
                                  decoration: InputDecoration(
                                      hintText: "Confirm Password",
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
                                      prefixIcon: Icon(Icons.lock),
                                      suffixIcon: IconButton(onPressed: (){
                                        setState(() {
                                          _securetext1=!_securetext1;
                                        });
                                      }, icon: Icon(_securetext1?Icons.visibility_off_outlined :
                                      Icons.remove_red_eye_outlined))
                                  ),
                                obscureText: _securetext1,

                              ),
                              SizedBox(height: 20,),
                              TextField(
                                  decoration: InputDecoration(
                                      hintText: "Referral Code",
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
                                      prefixIcon: Icon(Icons.people_outline_outlined )
                                  ),
                                  keyboardType: TextInputType.number
                              ),
                              SizedBox(height: 15,),
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
                                height: 40,
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
              ],
            )
          ],
        ),
      ),

    );
  }
}
