import 'package:animation_app/next_page.dart';
import 'package:flutter/material.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:ElevatedButton(
          onPressed:  (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return Nextpage(
                title: "MyApp",
              );
            }));
          },
          child: Text("Next"),
          ) 
        ),
    );
  }
  
}