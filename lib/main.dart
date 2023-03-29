import'package:flutter/material.dart';
import 'package:watch_product/screens/screen/firstPage.dart';
import 'package:watch_product/screens/screen/secodPage.dart';
import 'package:watch_product/screens/screen/thirdPage.dart';
import 'screens/treding.dart';
import 'screens/latest.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('=',style: TextStyle(fontSize: 35),),
                  CircleAvatar(backgroundImage: AssetImage('images/img.png'),),
                ],
                
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: TextField(
                  decoration: InputDecoration(
                  label: Row(
                    children: [
                      Icon(Icons.search,size: 33,),
                      Text('  Search',style: TextStyle(fontSize: 25),),
                    ],
                  ),
                prefix:Icon(Icons.search) ,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)
                    )
                  ),
                ),
              ),
              SizedBox(height: 30,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               TextButton(onPressed: (){
               }, child: Text('Featured',style: TextStyle(fontSize: 20,color: Colors.black),),
               ),
               TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>latestPage()));
    
               }, child: Text('Latest',style: TextStyle(fontSize: 20,color: Colors.black),),
               ),
               TextButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>TregindPage()));
    
               }, child: Text('Treding',style: TextStyle(fontSize: 20,color: Colors.black),),
               ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  ListTile(
                    onTap: (){
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstPage()));
                    },
                    leading: Image.asset('images/one.png'),
                    title: Text("""Getting my first UI/UX Design Intership"""
                    ,style: TextStyle(fontSize: 20,),
                    ),
                    subtitle: Text('jan 12 • 8 mln read '),
                  ),
              Padding(
                padding: const EdgeInsets.only(top: 30,bottom: 30),
                child: ListTile(
                  onTap: (() {
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
                  }),
                  leading: Image.asset('images/two.png'),
                       title: Text("""The Words Career Mistake Junior Ux Designers Make"""
                      ,style: TextStyle(fontSize: 20,),
                      ),
                      subtitle: Text('jan 12 • 8 mln read '),
                ),
              ), ListTile(
                onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>ThirdPage()));
                },
                leading: Image.asset('images/three.png'),
                     title: Text("""You're not Lazy, Bored unmotived"""
                    ,style: TextStyle(fontSize: 20,),
                    ),
                    subtitle: Text('jan 12 • 8 mln read '),
              ), 
                ],
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}