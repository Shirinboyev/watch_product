import 'package:flutter/material.dart';
import '../../main.dart';
class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});
  @override
  State<ThirdPage> createState() => _ThirdPageState();
}
class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/three.png'),
              fit: BoxFit.fill
              ),
              
          ),
          child: Column(
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
                title: Text("""You're not Lazy, Bored unmotived
                The verb κοσμεῖν (κοσμεῖν) meant generally "to dispose, prepare", but especially "to order and arrange (troops for battle), to set (an army) in array"; also "to establish (a government or regime)", "to adorn, dress" (especially of women). Thus kosmos meant "ornaments, decoration" (compare kosmokomes "dressing the hair," and cosmetic).[2] The philosopher Pythagoras used the term kosmos (Ancient Greek: κόσμος, Latinized kósmos) for the order of the universe.[3] Anaxagoras further introduced the concept of a Cosmic Mind (Nous) ordering all things.[4] The modern Greek κόσμος "order, good order, orderly arrangement" is a word with several main senses rooted in those notions. κόσμος has developed, along with primary "the universe, the world", the meaning of "people" (collectively).
                """,style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ],
          ),
        ),
      ),
    ); 
   }
 }