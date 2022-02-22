import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Use Widget',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('MyApp'),
          ),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    child: const Text('BERITA TERBARU',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: const Text('PERTANDINGAN HARI INI',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple.shade300),
                  color: Colors.purple.shade200,
                ),
                margin: const EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Image.network(
                              "https://picsum.photos/250/150?image=9",
                              fit: BoxFit.fitWidth),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                      child: Text(
                        'Costa Mendekat ke Palmeiras',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          child:
                              Text('Transfer', style: TextStyle(fontSize: 15)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [Row()],
                ),
              )
            ],
          )),
    );
  }
}
