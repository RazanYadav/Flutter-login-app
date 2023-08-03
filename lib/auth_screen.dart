import 'package:animation_app/product.dart';
import 'package:flutter/material.dart';

class Authpage extends StatefulWidget {
  const Authpage({super.key});

  @override
  State<Authpage> createState() => _AuthpageState();
}

class _AuthpageState extends State<Authpage> {
  bool showpassword = false;
  var emailCOntroller = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "create new password",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/animation.png"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("create your password"),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: emailCOntroller,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: passwordController,
                  obscureText: showpassword==true?false:true,
                  decoration: InputDecoration(
                     prefixIcon: Icon(Icons.lock),
                     suffixIcon: GestureDetector(
                      onTap:(){
                        setState(() {
                          if(showpassword==true){
                            showpassword=false;
                          }
                          else{
                            showpassword=true;
                          }
                        });
                      } ,
                      child: Icon(Icons.remove_red_eye),
                     ),
                      labelText: "password", border: OutlineInputBorder()),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Text("Remember Me")
                    ],
                  ),
                ),
                    SizedBox(height: 20,),
          GestureDetector(
            onTap: () {
              if(emailCOntroller.text.isNotEmpty ){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Product();
                }));
              }
              else{
                print("error");
              }
            },
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black
          
              ),
              child: Center(
                child: Text("Submit",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.bold
                ),),
              ),
              ),
          ),
      
              ],
            ),
          ),

      
        ),
      ),
    );
  }
}