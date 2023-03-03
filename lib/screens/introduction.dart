import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:pandatodo/screens/Home.dart';
import 'package:pandatodo/utils/const.dart';
import 'package:pandatodo/provider/App_provider.dart';
import 'package:provider/provider.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      color: myPurple,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("🐼 PandaToDo",
            style: TextStyle(
              color: Colors.purple,
              fontSize: 17,

            ),


          ),
          elevation: 0,
        ),

        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(height: 50,),
              Container(

                height: 60,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Text("Manage  your",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),

              ),
              Container(
                height: 60,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),

                child: Text("team  &  everything",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),

              ),
              Row(
                children: [
                  Container(
                    width: 70,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Text("with",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ),
                  Container(
                    width: 170,
                    // margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Text("PandaToDo ",
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),

                  ),
                ],
              ),
              Container(
                child: Image(
                  height: 300,
                  width: 500,
                  image: AssetImage('image/to-do-list.png'),

                ),
              ),
              Container(

                height: 30,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Text("When you're overwhelmed by the",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                  ),
                ),

              ),
              Container(

                height: 30,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Text("amount of work you have on your",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),

              ),
              Container(

                height: 30,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Text("plate, stop and rethink.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),

              ),
            ],
          ),
        ),
        floatingActionButton: Consumer<todoProvider>(builder: (context,provider,child){
          return GestureDetector(
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) =>  Home()),
              );
            },
            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                color: myPurple,
                borderRadius: BorderRadius.circular(25),
              ),
              alignment: Alignment.center,
              child: Text("Let's  Start",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ) ,
            ),
          );
        },),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
