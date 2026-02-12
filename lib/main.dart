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
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: '            Alfabit misali List view ge'),
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
  double borderRadius = 0;
  final userList = [
    "Alma",
    "Banan",
    "Curler",
    "Dane",
    "Erik",
    "Feyxoa",
    "Gilos",
    "Hurmo",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: .center,
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Usi jerden izle',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),

            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) => Container(
                        height: 72,

                        child: Row(
                          children: [
                            SizedBox(width: 19),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Colors.blueGrey.shade300,
                                  size: 50,
                                ),
                                Text(
                                  userList[index][0],
                                  style: TextStyle(fontSize: 22),
                                ),
                              ],
                            ),
                            SizedBox(width: 20),
                            Text(
                              userList[index],
                              style: TextStyle(fontSize: 21),
                            ),

                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.chevron_right),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      itemCount: userList.length,
                      separatorBuilder: (context, index) => Divider(),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 10,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    width: 30,
                    child: ListView.separated(
                      itemBuilder: (context, index) => Text(
                        userList[index][0],
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.center,
                      ),
                      itemCount: userList.length,
                      separatorBuilder: (context, index) => Divider(),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
