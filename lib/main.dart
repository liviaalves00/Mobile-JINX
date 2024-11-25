import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meili",
      theme: ThemeData(
          primaryColor: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const MyHomePage(title: "ueucome to da django"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;
  void _increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("leroleroleroleroCEREJA"),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            accountName: Text('meidesu'),
            accountEmail: Text('meidesu@outlook.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/jinx.jpg'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('calma calma calabreso'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          )
        ],
      )
          // backgroundColor: Color.fromARGB(255, 255, 103, 103),
          // child: Center(
          //   child: Column(
          //     children: [
          //       Text("oxe painho"),
          //       Image(
          //         image: NetworkImage(
          //             "https://motos.net.br/wp-content/uploads/ducati-panigale-v4-s-autonomia.jpg"),
          //       ),
          //       Column(
          //         children: [
          //           Text("Saldo"),
          //           Text("Extrado"),
          //           Text("Pagamentos")
          //         ],
          //       )
          //       // ListBody(
          //       //   mainAxis: Axis.horizontal,
          //       //   children: [
          //       //   ],
          //       // )
          //     ],
          //   ),
          // ),
          ),
      body: Center(
        child: Column(
          children: [
            Text("JINKSU"),
            Text('Abates: ${counter}'),
            const Image(
              image: NetworkImage(
                  'https://wallpapers.com/images/high/jinx-arcane-floating-neon-doodles-4fjnl0z0y5cfdmbl.webp'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.pink,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_ic_call_outlined,
            ),
            label: "Call",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _increment, tooltip: 'increment', child: Icon(Icons.add)),
    );
  }
}
