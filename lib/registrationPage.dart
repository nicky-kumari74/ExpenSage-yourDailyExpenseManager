import 'package:flutter/material.dart';
class MyApp1 extends StatefulWidget {
  const MyApp1({super.key});

  @override
  State<MyApp1> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp1> {
  var userName=TextEditingController();
  var Email=TextEditingController();
  var Password=TextEditingController();
  var cnfPassword=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expen Sage: Your Daily Expense Manager',
            style: TextStyle(
              color: Colors.white, // Change text color for better visibility
              fontSize: 18, // Optional: Adjust font size
              fontWeight: FontWeight.bold, // Optional: Make text bold
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(child: Container(
          width: 300,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(margin: EdgeInsets.only(top: 40),
                  child: Text('Register', style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                Container(height: 50,),
                TextField(
                  controller: userName,
                  decoration: InputDecoration(
                    hintText: 'Enter Name',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.indigoAccent,width: 2)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.deepOrange,width: 1)
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: Icon(Icons.person,color: Colors.black,)
                  ),
                ),
                Container(height: 15,),
                TextField(
                  controller: Email,
                  decoration: InputDecoration(
                    hintText: 'Enter Email',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.indigoAccent,width: 2)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.deepOrange,width: 1)
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      prefixIcon: Icon(Icons.email,color: Colors.black,)
                  ),
                ),
                Container(height: 15,),
                TextField(
                  controller: Password,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.indigoAccent,width: 2)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.deepOrange,width: 1)
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    prefixIcon: Icon(Icons.lock,color: Colors.black,)
                  ),
                ),
                Container(height: 15,),
                TextField(
                  controller: cnfPassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter Re-password',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.indigoAccent,width: 2)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.deepOrange,width: 1)
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      prefixIcon: Icon(Icons.lock,color: Colors.black,)
                  ),
                ),
                Container(height: 15,),
                ElevatedButton(onPressed: (){
                  String uname=userName.text.toString();
                  String email=Email.text.toString();
                  String password=Password.text.toString();
                  String cnfpassword=cnfPassword.text.toString();
                  print("UserName : $uname "+" Email:$email"+" password: $password");
                },
                  child: Text("Register",style: TextStyle(color: Colors.white,fontSize: 20)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Change button color
                    minimumSize: Size(300, 50), // Increase width and height
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Optional: Add rounded corners
                    ),
                  ),
                )
              ],
            )))
      ),
    );
  }
}
