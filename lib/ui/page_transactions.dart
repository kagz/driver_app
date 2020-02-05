import 'package:driver_app/ui/page_home.dart';

import 'package:driver_app/utils/colors.dart';
import 'package:flutter/material.dart';

class RecentTransactionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RecentTransactionsView();
  }
}

class RecentTransactionsView extends StatefulWidget {
  @override
  _RecentTransactionsViewState createState() => _RecentTransactionsViewState();
}

class _RecentTransactionsViewState extends State<RecentTransactionsView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Transactions",
              style: TextStyle(fontFamily: "Exo2", color: backgroundColor)),
          backgroundColor: colorCurve,
          leading: Container(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                iconSize: 30.0,
                icon: Icon(Icons.arrow_back),
                // onPressed: () => Navigator.pop(context),


onPressed: () {
   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),),);
    // Navigator.push(
    //   context,
    //   new MaterialPageRoute(
    //     builder: (context) => new ProfilePage(),
    //   ),
    // );
  },



                //  onPressed: () {},
                color: Colors.white,
              )

            ],
          )

              ),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Your Balance",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\ksh 4,350",
                      style: TextStyle(
                        fontSize: 34,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          width: double.infinity,
                          height: 60,
                          margin: EdgeInsets.only(bottom: 10),
                          alignment: FractionalOffset.center,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius:
                                BorderRadius.all(const Radius.circular(4.0)),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.attach_money,
                                color: Colors.white,
                                size: 40,
                              ),
                              Text('Withdraw',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 24)),
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(26),
              width: double.infinity,
              color: Colors.black12,
              child: Text(
                "Recent Trips",
                style: TextStyle(fontSize: 20, color: Colors.black38),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),

                  ///
                  Divider(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: ListTile(
                      // onTap: () => Navigator.pushNamed(context, "/transations"),
                      title: Text("Rongai", style: TextStyle(fontSize: 20)),
                      subtitle: Container(
                          margin: EdgeInsets.only(top: 10),
                          child:
                              Text("ksh 360 ", style: TextStyle(fontSize: 16))),
                      leading: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.blue, shape: BoxShape.circle),
                        child: Icon(
                          Icons.local_taxi,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      trailing:
                          Icon(Icons.place, color: Colors.black, size: 20),
                    ),
                  ),
                  Divider(),

                  ///

                  Divider(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: ListTile(
                      // onTap: () =>
                      //     Navigator.pushNamed(context, "/recent_transations"),
                      title: Text("Thika", style: TextStyle(fontSize: 20)),
                      subtitle: Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text("ksh 1,230 ",
                              style: TextStyle(fontSize: 16))),
                      leading: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.blue, shape: BoxShape.circle),
                        child: Icon(
                          Icons.local_taxi,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      trailing:
                          Icon(Icons.place, color: Colors.black, size: 20),
                    ),
                  ),
                  Divider(),

                  ///

                  Divider(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: ListTile(
                      // onTap: () =>
                      //     Navigator.pushNamed(context, "/recent_transations"),
                      title: Text("Kayole", style: TextStyle(fontSize: 20)),
                      subtitle: Container(
                          margin: EdgeInsets.only(top: 10),
                          child:
                              Text("ksh 600 ", style: TextStyle(fontSize: 16))),
                      leading: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.blue, shape: BoxShape.circle),
                        child: Icon(
                          Icons.local_taxi,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      trailing:
                          Icon(Icons.place, color: Colors.black, size: 20),
                    ),
                  ),
                  Divider(),

                  ///
                ],
              ),
            )
          ],
        ));
  }
}
