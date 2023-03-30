import 'package:flutter/material.dart';
import 'package:watch_product/main.dart';

class FirstPage extends StatefulWidget {
  final String path;
  final String txt;
  const FirstPage(this.path,this.txt,{super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
           alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.path),
              fit: BoxFit.fill
              ),
          ),
          child: ListView(
            children: [
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(fixedSize: Size(75, 60),
                    backgroundColor: Color(0xFF8179DD),  
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                    ),
                    
                    onPressed: (){
                   Navigator.pop(context,MaterialPageRoute(builder: (context)=>HomePage()));
                  }, child: Text('back')),
                ],
              ),
     ListTile(
                  title: Text(widget.txt,style: TextStyle(color: Colors.white,fontSize: 20),),
                ),

            ],
          ),
        ),
      ),
    );
  }
}