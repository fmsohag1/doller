import 'package:flutter/material.dart';

class mainpage extends StatelessWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcb5eee),
      appBar: AppBar(
        elevation: 0,
        title: Text("Doller",style: TextStyle(fontFamily: 'BalooDa2-Medium'),),
        backgroundColor: Color(0xffcb5eee),
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
          children: [
            //SizedBox(height: 100,),
            Stack(
              children: [
                Container(
                  height: 210,
                  width: 400,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(32),bottomRight: Radius.circular(32))
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 25,),
                        Row(
                          children: [
                            SizedBox(width: 130,),
                            Text("Faisal Mahmud Sohag",style: TextStyle(fontSize: 20,fontFamily: 'BalooDa2-Medium'),)
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 130,),
                            Text("Refer Code",style: TextStyle(fontSize: 20,fontFamily: 'BalooDa2-Medium'),)
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 130,),
                            Text("01863275190",style: TextStyle(fontSize: 20,fontFamily: 'BalooDa2-Medium'),)
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 130,),
                            Text("Balance",style: TextStyle(fontSize: 20,fontFamily: 'BalooDa2-Medium'),)
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 130,),
                            Icon(Icons.payments),
                            Text(" 0",style: TextStyle(fontSize: 20,fontFamily: 'BalooDa2-Medium'),),
                          ],
                        ),
                      ],
                    ),
                    ),
                  ),
                Positioned(
                  left: 20,
                    bottom: 50,
                    child: CircleAvatar(maxRadius: 50,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("images/download.jpg"),)),
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 450,
                  width: 400,
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32))
                      ),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            SizedBox(width: 20,),
                            FlatButton(onPressed: (){},child: Column(
                              children: [
                                Container(
                                  child: Icon(Icons.account_circle_outlined,size: 50,color: Colors.white,),
                                ),
                                Container(
                                  child: Text("Profile",
                                    style: TextStyle(fontFamily: 'BalooDa2-Medium',color: Colors.white,),),
                                ),
                              ],
                            ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              color: Colors.black,
                              height: 100,
                            ),
                            SizedBox(width: 20,),
                            FlatButton(onPressed: (){},child: Column(
                              children: [
                                Container(
                                  child: Icon(Icons.work_outlined,size: 50,color: Colors.white,),
                                ),
                                Container(
                                  child: Text("How To\n  Work",
                                    style: TextStyle(fontFamily: 'BalooDa2-Medium',color: Colors.white,),),
                                ),
                              ],
                            ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              color: Colors.black,
                              height: 100,
                            ),
                            SizedBox(width: 20,),
                            FlatButton(onPressed: (){},child: Column(
                              children: [
                                Container(
                                  child: Icon(Icons.poll_outlined,size: 50,color: Colors.white,),
                                ),
                                Container(
                                  child: Text("Top Users",
                                    style: TextStyle(fontFamily: 'BalooDa2-Medium',color: Colors.white,),),
                                ),
                              ],
                            ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              color: Colors.black,
                              height: 100,
                            ),
                          ],
                        ),
                        SizedBox(height: 40,),
                        Row(
                          children: [
                            SizedBox(width: 20,),
                            FlatButton(onPressed: (){},child: Column(
                              children: [
                                Container(
                                  child: Icon(Icons.payments,size: 50,color: Colors.white,),
                                ),
                                Container(
                                  child: Text("Withdraw",
                                    style: TextStyle(fontFamily: 'BalooDa2-Medium',color: Colors.white,),),
                                ),
                              ],
                            ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              color: Colors.black,
                              height: 100,
                            ),
                            SizedBox(width: 20,),
                            FlatButton(onPressed: (){},child: Column(
                              children: [
                                Container(
                                  child: Icon(Icons.task,size: 50,color: Colors.white,),
                                ),
                                Container(
                                  child: Text("Task",
                                    style: TextStyle(fontFamily: 'BalooDa2-Medium',color: Colors.white,),),
                                ),
                              ],
                            ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              color: Colors.black,
                              height: 100,
                            ),
                            SizedBox(width: 20,),
                            FlatButton(onPressed: (){},child: Column(
                              children: [
                                Container(
                                  child: Icon(Icons.history,size: 50,color: Colors.white,),
                                ),
                                Container(
                                  child: Text("History",
                                    style: TextStyle(fontFamily: 'BalooDa2-Medium',color: Colors.white,),),
                                ),
                              ],
                            ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              color: Colors.black,
                              height: 100,
                            ),
                          ],
                        ),
                        SizedBox(height: 40,),
                        Row(
                          children: [
                            SizedBox(width: 20,),
                            FlatButton(onPressed: (){},child: Column(
                              children: [
                                Container(
                                  child: Icon(Icons.notifications_none_sharp,size: 50,color: Colors.white,),
                                ),
                                Container(
                                  child: Text("Notice",
                                    style: TextStyle(fontFamily: 'BalooDa2-Medium',color: Colors.white,),),
                                ),
                              ],
                            ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              color: Colors.black,
                              height: 100,
                            ),
                            SizedBox(width: 20,),
                            FlatButton(onPressed: (){},child: Column(
                              children: [
                                Container(
                                  child: Icon(Icons.settings_overscan_outlined,size: 50,color: Colors.white,),
                                ),
                                Container(
                                  child: Text("Channel",
                                    style: TextStyle(fontFamily: 'BalooDa2-Medium',color: Colors.white,),),
                                ),
                              ],
                            ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              color: Colors.black,
                              height: 100,
                            ),
                            SizedBox(width: 20,),
                            FlatButton(onPressed: (){},child: Column(
                              children: [
                                Container(
                                  child: Icon(Icons.support,size: 50,color: Colors.white,),
                                ),
                                Container(
                                  child: Text("Support",
                                    style: TextStyle(fontFamily: 'BalooDa2-Medium',color: Colors.white,),),
                                ),
                              ],
                            ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              color: Colors.black,
                              height: 100,
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
