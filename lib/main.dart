import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saisai/main_model.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "aa",
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text("provider"),
          ),
          body: Consumer<MainModel>(builder: (context, model, child) {
            return Container(
              child: Column(
                children: [
                  Center(
                    child: Text(
                      model.asano,
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    model.changeAsanoText();
                  }, child: child)
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}



