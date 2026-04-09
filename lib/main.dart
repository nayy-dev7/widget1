import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'belajar Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'belajar flutter',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blueAccent,
          actions: [
            IconButton(
              icon: const Icon(Icons.info_outline),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('informasi'),
                    content: const Text(
                      'ini adalah aplikasi flutter sederhana',
                    ),
                  ),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                //aksi ketika tombol logout ditekan
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              width: 550,
              height: 550,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.blue, Colors.purple]),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Text(
                'Selamat Datang di Flutter',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),

        //   leading: IconButton(icon: const Icon(Icons.book), onPressed: () {}),
        // ),
        // body: Padding(
        //   padding: const EdgeInsets.all(16),
        //   child: SingleChildScrollView(
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Text(
        //           "Balonku Ada Lima\n",
        //           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        //         ),
        //         Text("Balonku ada lima"),
        //         Text("Rupa-rupa warnanya"),
        //         Text("Hijau, kuning, kelabu"),
        //         Text("Merah muda dan biru"),
        //         SizedBox(height: 10),
        //         Text("Meletus balon hijau"),
        //         Text(
        //           "DOR!!!",
        //           style: TextStyle(
        //             color: Colors.red,
        //             fontWeight: FontWeight.bold,
        //           ),
        //         ),
        //         Text("Hatiku sangat kacau"),
        //         SizedBox(height: 10),
        //         Text("Balonku tinggal empat"),
        //         Text("Kupegang erat-erat"),
        //       ],
        //     ),
        //   ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.send),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.delete), label: 'hapus'),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blueAccent),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(leading: Icon(Icons.home), title: Text('Home')),
              ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text('Contact Us'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}