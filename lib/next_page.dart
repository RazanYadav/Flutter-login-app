import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Nextpage extends StatefulWidget {
  String title;
  Nextpage({required this.title});
  
  @override
  State<Nextpage> createState() => _NextpageState();
}

class _NextpageState extends State<Nextpage> {
  double boxheight = 70;
  double radius = 10;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),

      ),
      body: Column(
        children: [
          AnimatedContainer(
            duration: Duration(seconds: 1),
            height: boxheight,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(radius)

            ),
            ),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
             setState((){
              if(boxheight==70){
                boxheight=100;
                radius = 10;
              }
              else{
                boxheight = 70;
                radius = 40;
              }
             },
             );
            },
             child: Text("Click")),

             SizedBox(height: 30,),
             Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
              )
             ),

              SizedBox(height: 30,),
             Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              )
             ),

              SizedBox(height: 30,),
             Container(  
             child:ElevatedButton(
          onPressed:  (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return Nextpage(
                title: "Login",
                 
          
              );
            }),
            );
          }, 
          child:Text("Login"),
             ),
             ),

             SizedBox(height: 30,),
             Container(  
             child:ElevatedButton(
          onPressed:  (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return Nextpage(
                title: "Sign Up",
                 
          
              );
            }),
            );
          }, 
          child:Text("Sign Up"),
             ),
             ),

        ],
      ),
    );
  }
}