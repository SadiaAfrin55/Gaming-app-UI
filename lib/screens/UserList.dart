import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UserList extends StatefulWidget {
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "User List",
        ),
        titleTextStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        centerTitle: true,
        bottom: PreferredSize(
            child: Container(
              color: Colors.black.withOpacity(0.15),
              height: 1.0,
            ),
            preferredSize: Size.fromHeight(4.0)),
        backgroundColor: Colors.black12.withOpacity(0.02),
        toolbarHeight: 65,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            //First Section
            Container(
              margin: EdgeInsets.symmetric(vertical: 30, horizontal: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("assets/Vector.png"),
                      Text(
                        "Total User",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "15",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Container(
                    width: 131,
                    height: 26,
                    child: FlatButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/Vector-person.png"),
                          SizedBox(width: 6),
                          Text(
                            "Add new User",
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ],
                      ),
                      color: Colors.black,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      onPressed: () {
                        Navigator.pushNamed(context, '/AddUser');
                      },
                    ),
                  )
                ],
              ),
            ),
            //Second Section
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              height: 47,
              color: Colors.black26.withOpacity(0.06),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Search",
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      fontSize: 16,
                    ),
                    icon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            SizedBox(height: 23),

            //third section
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Container(
                    height: 1,
                    color: Colors.black12,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            //forth section
            Expanded(
              flex: 10,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Center(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 15,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/crush.jpg"),
                            radius: 30,
                          ),
                          title: Text("Enamul Karim"),
                          subtitle: Text("Email"),
                          trailing: Container(
                            width: 71,
                            height: 26,
                            child: FlatButton(
                              child: Text(
                                "Remove",
                                style: TextStyle(fontSize: 14.0),
                              ),
                              color: Colors.black12,
                              textColor: Colors.black,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                              onPressed: () {
                                _showDialog(context);
                              },
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _showDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Confirm"),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text("Are you sure to delete is contact?"),
                ],
              ),
            ),
            actions: [
              FlatButton(
                child: Text(
                  "OK",
                  style: TextStyle(fontSize: 14.0),
                ),
                onPressed: () {
                  Fluttertoast.showToast(msg: "Delete Sucessfully", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.BOTTOM, timeInSecForIosWeb: 1, backgroundColor: Colors.black, textColor: Colors.white, fontSize: 16.0);
                },
              ),
              FlatButton(
                child: Text(
                  "Cancel",
                  style: TextStyle(fontSize: 14.0),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }
}
