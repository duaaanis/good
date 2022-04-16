import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPgae extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "assets/images/a.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter username",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter pasword",
                    labelText: "Pasword",
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                ElevatedButton(
                  child: Text("login"),
                  style: TextButton.styleFrom(maximumSize: Size(150, 40)),
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                ),
              ],
            ),
          ],
        ));
  }
}
