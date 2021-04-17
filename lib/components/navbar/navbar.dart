import 'package:flutter/material.dart';

class NavbarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        margin: EdgeInsets.fromLTRB(size.width * 0.2, 0, size.width * 0.2, 14),
        height: 100,
        child: Stack(
          children: [
            Center(
              child: Container(
                  height: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: BottomNavigationBar(
                    backgroundColor: Colors.red,
                    showUnselectedLabels: false,
                    showSelectedLabels: false,
                    iconSize: 20,
                    items: [
                      BottomNavigationBarItem(
                          icon: Icon(Icons.verified_user), title: Text("ciao")),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.list),
                        title: Text("ciao"),
                      ),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.devices_other_sharp), title: Text("hi")),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Positioned(
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Icon(Icons.add),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
