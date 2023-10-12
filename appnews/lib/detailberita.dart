import 'package:appnews/main.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class detailberita extends StatelessWidget {
  detailberita({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('This is detail'),
    );
  }
}
