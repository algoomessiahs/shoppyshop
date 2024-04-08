import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {

  static const routeName = "/profile";

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Profile",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 29,
              ),
            ),
            Divider(
              endIndent: 280.0,
              color: Colors.white,
              thickness: 3,
            )
          ],
        ),
        elevation: 0,
      ),
      backgroundColor: Color(0xff202020),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              height: 300,
              width: double.infinity,
              color: Color(0xff202020),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.black,
                      ),
                      GestureDetector(
                        onTap: () {
                          // add photo function
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 75, left: 85),
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 3)),
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.blue,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Text(
                    "Anonymous",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    height: 40,
                    width: 200,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: FlatButton(
                        color: Colors.black,
                        onPressed: () {
                          // get subscription functiion
                        },
                        child: Text(
                          "Get Subscription",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  // height: 260,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "Summary Language",
                          style: txtStyle(),
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                      ListTile(
                        title: Text(
                          "Notification",
                          style: txtStyle(),
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                      ListTile(
                        title: Text(
                          "Notification",
                          style: txtStyle(),
                        ),
                        trailing: Switch(
                            activeColor: Colors.white,
                            value: true,
                            onChanged: (value) {
                              // notification switch
                            }),
                      ),
                      ListTile(
                        title: Text(
                          "App Notification",
                          style: txtStyle(),
                        ),
                        trailing: Switch(
                            activeColor: Colors.white,
                            value: true,
                            onChanged: (value) {
                              // app notification switch
                            }),
                      ),
                      ListTile(
                        title: Text(
                          "Mail me FREE summaries and \noffers",
                          style: txtStyle(),
                        ),
                        trailing: Switch(
                            inactiveTrackColor: Colors.grey,
                            value: false,
                            onChanged: (value) {
                              //summaries and  offers switch
                            }),
                      ),
                      ListTile(
                        title: Text(
                          "Night Mode",
                          style: txtStyle(),
                        ),
                        trailing: Switch(
                            activeColor: Colors.white,
                            value: true,
                            onChanged: (value) {
                              // notification switch
                            }),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black,
                    border: Border.all(
                      color: Colors.grey,
                    )),
                child: Column(
                  children: [
                    ListTile(
                        onTap: () {
                          //rate app function
                        },
                        title: Text(
                          "Rate App",
                          style: txtStyle(),
                        ),
                        trailing: Icon(
                          Icons.star,
                          color: Colors.grey,
                        )),
                    Divider(color: Colors.grey),
                    ListTile(
                      onTap: () {
                        //share app function
                      },
                      title: Text(
                        "Share App",
                        style: txtStyle(),
                      ),
                      trailing: Icon(
                        Icons.share,
                        color: Colors.grey,
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    ListTile(
                      onTap: () {
                        //contact us function
                      },
                      title: Text(
                        "Contact Us",
                        style: txtStyle(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About us",
                    style: headingTxtStyle(),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "We call ourselves GIGL'ers. Gigler's are the ones who learn Great Ideas from Great People. One who shares Great Ideas and is not insecure . if you wa.. ",
                    style: dummyStyle(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Privacy Policy",
                      style: headingTxtStyle(),
                    ),
                  ),
                  Text(
                    "GIGL is an Internet based digital subscription service that gives you (heinafter 'You' or the 'User') access to audio books and e-books in You...",
                    style: dummyStyle(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Terms of Conditions",
                    style: headingTxtStyle(),
                  ),
                  Text(
                    "GIGL Enterprise ('Great Ideas Great Life') is pleased to provide to You to its Service delivred via online platform (like iOS application,..",
                    style: dummyStyle(),
                  )
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  bottom: 5,
                ),
                child: ListTile(
                  onTap: () {
                    //Logout function
                  },
                  title: Row(
                    children: [
                      Text("Logout",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Icon(
                          Icons.logout,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  TextStyle dummyStyle() => TextStyle(color: Colors.grey, fontSize: 18);

  TextStyle headingTxtStyle() {
    return TextStyle(
        color: Color(0xffD3601F), fontSize: 23, fontWeight: FontWeight.w700);
  }

  TextStyle txtStyle() {
    return TextStyle(
        color: Colors.grey, fontSize: 17, fontWeight: FontWeight.w600);
  }
}