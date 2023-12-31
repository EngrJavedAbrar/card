import 'package:card/shoe_page.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class buildCard extends StatelessWidget {
  final CardItem item;
  const buildCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Column(
        children: [
          Expanded(
              child: AspectRatio(
            aspectRatio: 4 / 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Material(
                child: Ink.image(
                    image: NetworkImage(item.urlimage),
                    fit: BoxFit.cover,
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShoePage(
                                    item: item,
                                  ))),
                    )),
              ),
            ),
          )),
          SizedBox(
            height: 4,
          ),
          Text(
            item.title,
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            item.subtitle,
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
    ;
  }
}
