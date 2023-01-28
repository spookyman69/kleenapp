import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //leading: ,
          backgroundColor: Colors.white,
          elevation: 3,
          title: Image.asset(
            'assets/logo.png',
            height: 200,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: (() {}),
              style: TextButton.styleFrom(foregroundColor: Colors.green[400]),
              child: const Icon(Icons.settings),
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(20, 30.0, 20, 30.0),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 30.0, 0, 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        debugPrint('Card tapped.');
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 50),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage(
                                  'assets/request.png',
                                ),
                                width: 100.0,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 6,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 15),
                              decoration: BoxDecoration(
                                  color: Colors.green[400],
                                  borderRadius: BorderRadius.circular(20)
                                  //   topLeft: Radius.circular(20),
                                  //   bottomRight: Radius.circular(20),
                                  // ) // green shaped
                                  ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text("Request",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  letterSpacing: 1.5,
                                  fontWeight:FontWeight.w700 ,
                                ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        debugPrint('Card tapped.');
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 50),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage('assets/pickup.png'),
                                width: 100.0,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 6,
                            left:7.5,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 20),
                              decoration: BoxDecoration(
                                  color: Colors.green[400],
                                  borderRadius: BorderRadius.circular(20)
                                   ), // green shaped
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text("Accept",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  letterSpacing: 1.5,
                                  fontWeight:FontWeight.w800 ,
                                ),
                                ),
                              ),
                            ), 
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.green[400],
          selectedItemColor: Colors.green[900],
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin_outlined),
              label: 'Profile',
            )
          ],
        ));
  }
}
