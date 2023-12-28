import 'package:card/main.dart';
import 'package:flutter/material.dart';

class ShoePage extends StatelessWidget {
  final CardItem item;

  const ShoePage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: Column(
        children: [
          AspectRatio(aspectRatio: 4/3,
          child: Image.network(item.urlimage,
          fit: BoxFit.cover,),),

          SizedBox(height: 8,),

          Text(item.title),

          SizedBox(height: 8,),

        ],
      ),
    );
  }
}
