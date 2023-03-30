import'package:flutter/material.dart';
import 'package:watch_product/screens/screen/firstPage.dart';
import 'screens/screen1/treding.dart';
import 'screens/screen1/latest.dart';

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
          child: ListView(
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
                     leading: Image.asset('images/phone1.png'),
                       title: Text("""Getting my first UI/UX Design Intership"""
                      ,style: TextStyle(fontSize: 20,),
                      ),
                    onTap: (){
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstPage('images/phone1.png', """You're not Lazy, Bored unmotived
                  The verb κοσμεῖν (κοσμεῖν) meant generally "to dispose, prepare", but especially "to order and arrange (troops for battle), to set (an army) in array"; also "to establish (a government or regime)", "to adorn, dress" (especially of women). Thus kosmos meant "ornaments, decoration" (compare kosmokomes "dressing the hair," and cosmetic).[2] The philosopher Pythagoras used the term kosmos (Ancient Greek: κόσμος, Latinized kósmos) for the order of the universe.[3] Anaxagoras further introduced the concept of a Cosmic Mind (Nous) ordering all things.[4] The modern Greek κόσμος "order, good order, orderly arrangement" is a word with several main senses rooted in those notions. κόσμος has developed, along with primary "the universe, the world", the meaning of "people" (collectively).
                  """)));
                    },
                    subtitle: Text('jan 12 • 8 mln read '),
                  ),
              Padding(
                padding: const EdgeInsets.only(top: 30,bottom: 30),
                child: ListTile(
                  onTap: (() {
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstPage('images/phone2.png', """You're not Lazy, Bored unmotived
                  The verb κοσμεῖν (κοσμεῖν) meant generally "to dispose, prepare", but especially "to order and arrange (troops for battle), to set (an army) in array"; also "to establish (a government or regime)", "to adorn, dress" (especially of women). Thus kosmos meant "ornaments, decoration" (compare kosmokomes "dressing the hair," and cosmetic).[2] The philosopher Pythagoras used the term kosmos (Ancient Greek: κόσμος, Latinized kósmos) for the order of the universe.[3] Anaxagoras further introduced the concept of a Cosmic Mind (Nous) ordering all things.[4] The modern Greek κόσμος "order, good order, orderly arrangement" is a word with several main senses rooted in those notions. κόσμος has developed, along with primary "the universe, the world", the meaning of "people" (collectively).
                  """)));
                  }),
                  leading: Image.asset('images/phone2.png'),
                       title: Text("""The Words Career Mistake Junior Ux Designers Make"""
                      ,style: TextStyle(fontSize: 20,),
                      ),
                      subtitle: Text('jan 12 • 6 mln read '),
                ),
              ), ListTile(
                onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstPage('images/phone3.png', """You're not Lazy, Bored unmotived
                The verb κοσμεῖν (κοσμεῖν) meant generally "to dispose, prepare", but especially "to order and arrange (troops for battle), to set (an army) in array"; also "to establish (a government or regime)", "to adorn, dress" (especially of women). Thus kosmos meant "ornaments, decoration" (compare kosmokomes "dressing the hair," and cosmetic).[2] The philosopher Pythagoras used the term kosmos (Ancient Greek: κόσμος, Latinized kósmos) for the order of the universe.[3] Anaxagoras further introduced the concept of a Cosmic Mind (Nous) ordering all things.[4] The modern Greek κόσμος "order, good order, orderly arrangement" is a word with several main senses rooted in those notions. κόσμος has developed, along with primary "the universe, the world", the meaning of "people" (collectively).
                """)));
                },
                leading: Image.asset('images/phone3.png'),
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