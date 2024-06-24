import 'package:flutter/material.dart';
import 'contractform.dart';
import 'contractview.dart';

void main() {
  runApp(const SecondScreen(title: 'SecondScreen'));
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key, required String title});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(length: 2, 
      child:Scaffold(
        appBar: AppBar(
          title: const Text('Second Screen'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'CREATE'),
              Tab(text: 'VIEW'),
            ]
          ),
          ),
          body: const TabBarView(
            children: [
              //TAB 1
             ContractForm(),
              //TAB 2
              ContractView(contracts: [])
              
            ],)
        ),
      )
    );

  }
}