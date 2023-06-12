import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
   HomePage({super.key});

   List<String> items = [
     "Apple",
     "Bananas",
     "Bread",
     "Milk",
     "Eggs",
   ];

  mySnackBar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text("My Shopping List"),
            centerTitle: true,
            actions: [
              IconButton(onPressed: (){
                mySnackBar("Cart is empty", context);
              }, icon: const Icon(Icons.shopping_cart))
            ],
          ),
      body: ListView.builder(
        itemCount: items.length,
          itemBuilder: (context, index){
          return  ListTile(
            leading: Icon(Icons.shop),
            title: Text(items[index]),
          );
          }),
    );
  }
}