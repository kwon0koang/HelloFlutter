import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text("헬로마켓"),
          actions: [Icon(Icons.search), Icon(Icons.menu), Icon(Icons.add_alert_rounded)]
        ),
        body: ListView(
          children: [SellItem(), SellItem(), SellItem(), SellItem(), SellItem(), SellItem(), SellItem(), SellItem(), SellItem(), SellItem(), SellItem(), SellItem(), SellItem()],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(height: 60, color: Colors.blue,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Icon(Icons.phone), Icon(Icons.message), Icon(Icons.menu)]
            ),
          ),
        )
      )
    );
  }
}

class SellItem extends StatelessWidget {
  const SellItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150, padding: EdgeInsets.all(20),
      child: Row(
          children: [
            Image.asset("assets/pikachu.png", width: 100, height: 100),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("피카츄 인형", style: TextStyle(fontSize: 20)),
                  Text("서울 은평구 갈현동", style: TextStyle(color: Colors.black45)),
                  Text("5,000원"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.favorite),
                      Text("99")
                    ],
                  )
                ],
              ),
            )
          ]
      ),
    );
  }
}
