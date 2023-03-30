import 'package:flutter/material.dart';
import '../main.dart';
class TregindPage extends StatefulWidget {
  const TregindPage({super.key});

  @override
  State<TregindPage> createState() => _TregindPageState();
}

class _TregindPageState extends State<TregindPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/not found.png'))
          ),
          child: Column(children: [
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
          ],),
        ),
      ),
    );
  }
}