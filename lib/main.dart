import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp( MaterialApp(
    home: Homepage()),
  );
}

class Homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      body: Center(
        child: ElevatedButton(

          onPressed:(){
            // child: const Text("Go to second Page");
            Navigator.push(context, MaterialPageRoute(
                builder: (context)=> Secondpage()));
          }, child: null,
        ),
      ),
    );
  }
}
class Secondpage extends StatelessWidget {
  const Secondpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[800],
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
          Navigator.pop(context);
        },
        child: null,

        ),
      ),
    );
  }
}

// debugShowCheckedModeBanner: false,



