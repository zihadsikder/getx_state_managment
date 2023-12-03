

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  RxInt count = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Obx(()=> Text(count.toString(), style: TextStyle(fontSize: 30),)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          count++;
        },
        child: Icon(Icons.add) ,
      ),
    );
  }
}
