import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(title: Text("T A B L E T"),backgroundColor: Colors.deepPurple[400],),
      body: Row(
        children: [
          Expanded(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),

                child: AspectRatio(
                  aspectRatio: 16/9,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.30,
                    color: Colors.deepPurple[400],
                  ),
                ),
              ),
              Expanded(child:
              ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context , index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container (
                        color: Colors.deepPurple[300],
                        height: 100,
                      ),
                    );
                  }))


            ],),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              color:Colors.deepPurple[300],
            ),
          )
        ],
      ),
    );
  }
}
