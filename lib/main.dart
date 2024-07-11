import 'dart:ui';

import 'package:flutter/material.dart';

void main(){
  runApp(const FlutterApp());
}

class FlutterApp extends StatelessWidget{
  const FlutterApp({super.key});

  @override
    Widget build(BuildContext context){
      return MaterialApp(
        title: "flutter App",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
        home: const DashBoardScreen(),
      );
    }
}

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var arrNames = {
      'tejas':'9637741326',
      'siddhant':'9637741326',
      'saiesh':'9637741326',
      'dattu':'9637768445',
      'rudresh':'741326-967767',
      'madhukar':'9637741326',
      'aditya':'741326545454'
    //   tejas
    };
    var entries = arrNames.entries.toList();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Phone Directory",),
        ),
        body: ListView.separated(itemBuilder: (context, index) {
          var entry = entries[index];
          return ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/images/avatar.jpg'),),
            title: Row(
              children: [
                Text('${index + 1}'+' '),
                Text(entry.key),
              ],
            ),
            subtitle: Text(entry.value),
            trailing: Icon(Icons.add),
          );
        },
          itemCount: arrNames.length,
          separatorBuilder: (context, index) {
            return Divider(height: 20, thickness: 1,);
          },
        )
    );
  }
}