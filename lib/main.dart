import 'package:card/card.dart';
import 'package:card/shoe_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'list_item.dart';

void main() {
  runApp(MyApp());
}

class CardItem {
  final String urlimage;
  final String title;
  final String subtitle;
  const CardItem(
      {required this.urlimage, required this.title, required this.subtitle});
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.grey.shade100,
          body: Column(
            children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                child: Image.network('assets/shoe_1.jpg', fit: BoxFit.cover,),
              ),
            ),
          ),
              Container(
                height: (MediaQuery.of(context).size.height / 3) * 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: GridView.builder(
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemBuilder: (context, index) =>
                        buildCard(item: items[index]),
                  )),
                ),
              ),
            ],
          ),

          // Container(
          //   height: 250,
          //   child: ListView.separated(
          //     padding: EdgeInsets.all(8.0),
          //     scrollDirection: Axis.horizontal,
          //     itemCount: 4,
          //     separatorBuilder: (context, _) => SizedBox(width: 12,),
          //     itemBuilder: (context, index) => buildCard(item: items[index]),
          //   )
          // ),
        ),
      );
}
