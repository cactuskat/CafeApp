import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cafe_title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cafe App',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 187, 144, 116)),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.brown.shade100,
        )
      ),
      home: const FirstScreen(),
    );
  }
}

// Homepage Landing Screen
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      // cafe name in app bar on top
      appBar: AppBar(
        title: const CafeTitle(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
            'Our Story',
            textAlign: TextAlign.center,
            style: GoogleFonts.playfairDisplay(
              fontSize: 50,
              color: Colors.brown.shade700,
              height: 1.5,
              ),
            ),
            SizedBox(height: 10),
            // cafe image
            Image.asset(
                'assets/cafe.jpg',
                width: 500,
                height: 300,
            ),
            const SizedBox(height: 32),
            // paragraph about the cafe
            Text(
              'Handcraft and freshly roasted. Take a sip and stay a while.',
              textAlign: TextAlign.center,
              style: GoogleFonts.playfairDisplay(
                fontSize: 20,
                color: Colors.brown.shade700,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 40),
            //button to menu
            // directs to second page
            FilledButton(
              style: FilledButton.styleFrom(
                shape: const StadiumBorder(),
                padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 20),
                backgroundColor: Colors.brown,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
              },
              child: Text(
                'Menu',
                style: GoogleFonts.playfairDisplay(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Menu Screen
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  // menu items and price
  static const Map<String,double> menu = {
    'It that me Espresso': 3.00,
    'Ballerina Cappuccina': 4.50,
    'La-La-Latte!': 4.75,
    'Matcha Midori': 5.25,
    'Coldest Brew': 4.25,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      appBar: AppBar(
        title: const CafeTitle(),
      ),
      body:Column(
        children: [
          Text(
            'Menu',
            textAlign: TextAlign.center,
            style: GoogleFonts.playfairDisplay(
              fontSize: 70,
              color: Colors.brown.shade700,
              height: 1.5,
              ),
          ),
          // lists all menu items and price
          // seperates with dividers
          Flexible(child: ListView.separated(
            shrinkWrap: true,
            padding: const EdgeInsets.all(16),
            itemCount: menu.length,
            separatorBuilder: (context, index) =>
                Divider(color: Colors.brown.shade200, height: 1),
            itemBuilder: (BuildContext context,int index) {
              final item = menu.entries.elementAt(index);
              return ListTile(
                title: Text(
                  item.key,
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 18,
                    color: Colors.brown.shade800,
                  ),
                ),
                trailing: Text(
                  '\$${item.value.toStringAsFixed(2)}',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
              );
            },
          ),),
          SizedBox(height: 12),
          // Mactha image
          Image.asset(
            'assets/matcha.jpg',
            width: 500,
            height: 200,
          ),
          //button to menu
          // directs to second page
          FilledButton(
            style: FilledButton.styleFrom(
              shape: const StadiumBorder(),
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 20),
              backgroundColor: Colors.brown,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FirstScreen()),
              );
            },
            child: Text(
              'Homepage',
              style: GoogleFonts.playfairDisplay(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ) 
    );
  }
}