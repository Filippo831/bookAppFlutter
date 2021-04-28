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
              child: SizedBox(
                height: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: BottomNavigationBar(
                    showUnselectedLabels: false,
                    showSelectedLabels: false,
                    iconSize: 20,
                    backgroundColor: Theme.of(context).accentColor,
                    items: [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.verified_user,
                            color: Theme.of(context).primaryColor),
                        title: Text("ciao"),
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.list),
                        title: Text("ciao"),
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.devices_other_sharp),
                        title: Text("hi"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              child: Center(
                child: Container(
                  height: 70,
                  width: 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/newBook');
                      },
                      child:
                          Icon(Icons.add, color: Theme.of(context).accentColor),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
