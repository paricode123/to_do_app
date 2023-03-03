import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:pandatodo/Models/Models.dart';
import 'package:pandatodo/provider/App_provider.dart';
import 'package:pandatodo/screens/Add_Task_Screen.dart';
import 'package:pandatodo/utils/const.dart';
import 'package:provider/provider.dart';
import 'package:pandatodo/provider/App_provider.dart';



class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
        color: myPurple,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(

            backgroundColor: Colors.white,
            shadowColor: Colors.purple,
            elevation: 15,
            title: const Text("Your Tasks",
            style: TextStyle(
              color: Colors.purple,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),),
            centerTitle: true,
          ),

          body: Consumer<todoProvider>(builder: (context,provider,child){
            return ListView.builder(
                itemCount: provider.Task.length,
                itemBuilder: (context,index){
                  return CheckboxListTile(
                    value: provider.Task[index].doneOrNot,
                    onChanged: (value){
                      provider.setDoOrNotAtTheIndex(index, value!);
                      // setState(() {
                      //   provider.Task[index].doneOrNot = value!;
                      // });
                    },
                    activeColor:  Colors.purple,
                    title: provider.Task[index].doneOrNot?
                    Text(provider.Task[index].title,
                      style: const TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    )
                        : Text(provider.Task[index].title,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  );
                }
            );
          },),


          floatingActionButton: FloatingActionButton(
            backgroundColor: myPurple,
            onPressed: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) =>  Add_Task_Screen()),
              );
            },
            child: Icon(Icons.add),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        )
    );
  }
}
