import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: GridCustom(),));
}
class GridCustom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView.Custom"),
      ),
      body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          childrenDelegate: SliverChildListDelegate(
              List.generate(12, (index) => Card(
                child: Center(
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage("assets/images/bc.jpg"))
                      ),
                    ),
                    Text("Item.1"),
                    Text("\$ 280"),
                  ],
                ),
              )))),
      )
    );
  }
}
