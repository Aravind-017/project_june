import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: shrine(),));
}
class shrine extends StatelessWidget {
  var name=['Vagabond sack','stella','Whitney belt','Garden strand','Strut earrings','Varsity socks'];
  var price=[120,58,35,98,34,12];
  var image=['assets/images/bag.jpg','assets/images/sun.jpeg','assets/images/belt.jpeg',
    'assets/images/chain.jpeg','assets/images/earring.jpeg','assets/images/socks.jpeg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("SHRINE"),
        backgroundColor: Colors.indigoAccent,
        actions: [
          Icon(Icons.search),
          SizedBox(width: 30,),
          //Icon(Icons.)
        ],
      ),
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          childrenDelegate: SliverChildListDelegate(List.generate(6, (index) =>
          Card(
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                          image: AssetImage(image[index]))
                    ),
                  ),
                  Text(name[index]),
                Text("\$ ${price[index]}"),
                ],
              ),
            ),
          )))),
    );
  }
}
