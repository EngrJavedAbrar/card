import 'package:card/main.dart';
import 'package:flutter/material.dart';

class ShoePage extends StatelessWidget {
  final CardItem item;

  const ShoePage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(item.title),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 4/3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(item.urlimage,
                  fit: BoxFit.cover,),
                ),
                ),
              ),
             // SizedBox(height: 8,),
              //Text(item.title),
            ],
          ),
        ),
      ),
    );
  }
}
