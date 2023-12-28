import 'dart:js';

import 'package:card/card.dart';
import 'package:card/shoe_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'card_item.dart';

void main() {
  runApp(MyApp(
    
  ));
}

class CardItem {
  final String urlimage;
  final String title;
  final String subtitle;

  const CardItem({ required this.urlimage, required this.title, required this.subtitle});

}


class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<CardItem> items = [
    CardItem(
      urlimage: 'assets/shoe_1.jpg',
          title: 'Nike Free Run',
        subtitle: '\$99',
    ),
    CardItem(
      urlimage: 'https://images.unsplash.com/photo-1607522370275-f14206abe5d3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8c2hvZXxlbnwwfHwwfHx8MA%3D%3D',
      title: 'Air Jordan',
      subtitle: '\$108',
    ),
    CardItem(
      urlimage: 'https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHNob2V8ZW58MHx8MHx8fDA%3D',
      title: 'Hummel',
      subtitle: '\$75',
    ),
    CardItem(
      urlimage: 'https://images.unsplash.com/photo-1608231387042-66d1773070a5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8c2hvZXxlbnwwfHwwfHx8MA%3D%3D',
      title: 'PUMA' ,
      subtitle: '\$126',
    )
  ];


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)=> MaterialApp(
    home: Scaffold(
          body: Container(
            height: 250,
            child: ListView.separated(
              padding: EdgeInsets.all(8.0),
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              separatorBuilder: (context, _) => SizedBox(width: 12,),
              itemBuilder: (context, index) => buildCard(item: items[index]),
            )
          ),
        ),
  );

  Widget buildCard({
    required CardItem item,
}
      ) => Container(
    width: 200,
    child: Column(
      children: [
        Expanded(child: 
        
        AspectRatio(
          aspectRatio: 4/3,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Material(
              child: Ink.image(
                image: NetworkImage('item.urlimage'),
                fit: BoxFit.cover,
                child: InkWell(
                  onTap: () => Navigator.push(context as BuildContext,
                      MaterialPageRoute(builder: (context) => ShoePage(
                        item: item,
                      ))),
                )
              ),
            ),
          ),
        )),
        SizedBox(height: 4,),
        Text(item.title, textDirection: TextDirection.ltr, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
        Text(item.subtitle, textDirection: TextDirection.ltr, style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),)

      ],
    ),
  );
}


