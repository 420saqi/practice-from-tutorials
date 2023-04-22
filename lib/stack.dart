import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    clicked() {
      print('cllllllllllllliiiiiiiiiicked');
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 500,
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: 50),
                decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 100,
                width: 400,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 500,
                  width: 420,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Expanded(
                    flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(top: 10),
                          // color: Colors.yellow,
                          child:
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('assets/download.jpg')
                            ),
                            title: Text('Clock',style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                            ),
                          )

  //      the commented code works same as ListTile above but easy is ListTile

                                    // Row(
                          //   children: [
                          //     Container(
                          //       margin: EdgeInsets.only(left: 10),
                          //         height: 40,
                          //         child: Image.asset('assets/download.jpg')),
                          //     Container(
                          //         margin: EdgeInsets.only(left: 5),
                          //         child: Text('Clock', style: TextStyle(
                          //           fontWeight: FontWeight.bold,
                          //         ),))
                          //   ],
                          // )






                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('City' ,style: TextStyle(fontWeight: FontWeight.w800),),
                              Container(
                                height: 10,
                              ),
                              Text('Add a clock for a city to check time at'
                                ' that location')
                            ],
                          )
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          height: 150,
                          width: 150,
                          // color: Colors.pink,
                          child: Image.asset('assets/download.jpg'),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: 300,
                          // color: Colors.amber,
                          child: ElevatedButton(
                            onPressed: ()=>null,
                            child: Text('Add a Widget'),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: BorderSide(color: Colors.black)
                              )),
                            ),

                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
