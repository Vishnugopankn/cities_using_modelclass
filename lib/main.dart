import 'package:flutter/material.dart';

import 'modelclass.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      home:const Listviewbuilder())
      );
}
class Listviewbuilder extends StatefulWidget {
  const Listviewbuilder({Key? key}) : super(key: key);

  @override
  State<Listviewbuilder> createState() => _ListviewbuilderState();
}

class _ListviewbuilderState extends State<Listviewbuilder> {
  /*List c=[Colors.green,Colors.teal,Colors.cyan,Colors.orangeAccent];
  List pic=["images/Taj-Mahal.jpg","images/Burj-Khalifa.jpg","images/statue-of-liberty.jpg","images/London-Bridge.jpg"];
  List place=["Tajmahal","Burj khalifa","Statue of liberty","London Bridge"];
  List culture=["Indian culture","Arabian culture","Us culture","United Kindom"];*/
  List destination=[Location(img:"images/Taj-Mahal.jpg",culture: "Indian culture",place:"Tajmahal",col:Colors.green)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
             appBar: AppBar(title: Text("List View"),leading: Icon(Icons.list),),
      body: ListView.builder(
        shrinkWrap: true,
          itemCount: destination.length,
          itemBuilder: (BuildContext context,int index){
           return Padding(
             padding: const EdgeInsets.all(10.0),
             child: Container(height: 100,
               color: destination[index].col,
               child:Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 10.0),
                     child: CircleAvatar(
                       maxRadius: 40,
                       backgroundImage: AssetImage("${destination[index].img}")
                     ),
                   ),
                   SizedBox(width: 20,),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("${destination[index].place}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                       Text("${destination[index].culture}")
                     ],
                   )
                 ],
               ) ,
             ),
           );
          }
      ),
    );
  }
}

