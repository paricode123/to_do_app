import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:pandatodo/screens/Home.dart';
import 'package:pandatodo/utils/const.dart';
import 'package:pandatodo/provider/App_provider.dart';
import 'package:provider/provider.dart';



class Add_Task_Screen extends StatelessWidget {
   Add_Task_Screen({Key? key}) : super(key: key);

  late String _Task = "";
  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(

      color: myPurple,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: myPurple,
          title: Text("Enter your Task"),
          elevation: 0,
        ),

        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: Image(
                    height: 150,
                    width: 200,
                    image: AssetImage('image/img.png'),

                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 70),
                  height: 50,
                  width: 300,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color:Colors.purple ,
                      borderRadius: BorderRadius.circular(20)
                  ),

                  child: Text("   Add Your Task Here",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ),

                SizedBox(height: 35,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  height: 300,
                  width: 400,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(blurRadius: 20,
                        color: Colors.purple),
                      ],
                      color: Colors.white,
                      border: Border.all(color: myPurple),
                      borderRadius: BorderRadius.circular(20)


                  ),
                  // alignment: Alignment.center,
                  child: TextField(
                    onChanged: (value){
                      // print(value);
                      _Task = value;
                    },
                    autofocus: true,
                    style: TextStyle(color: myPurple),
                    decoration: InputDecoration(
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none

                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        floatingActionButton: Consumer<todoProvider>(builder: (context,provider,child){
          return GestureDetector(
            onTap: (){
              provider.setANewTask(_Task);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>  Home()),
              );
            },
            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                color: myPurple,
                borderRadius: BorderRadius.circular(8),
              ),
              alignment: Alignment.center,
              child: Text("Add a Task",
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
