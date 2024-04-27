import 'package:flutter/material.dart';

import 'onboard_view_page.dart';
import 'onboarding_view.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const OnBoardingView(pageList: [
        OnboardViewPage(
            title: 'Bem-vindo ao App !', 
            subtitle: 'Explore todos os recursos incríveis que temos para oferecer.', 
            imagePath: 'assets/png/image1.png'
          ),
          OnboardViewPage(
            title: 'Descubra Novas Possibilidades', 
            subtitle: 'Torne sua experiência mais fácil e eficiente com nossas funcionalidades exclusivas.', 
            imagePath: 'assets/png/image2.png'
          ),
          OnboardViewPage(
            title: 'Comece Agora', 
            subtitle: 'Junte-se a nós hoje e comece a aproveitar todos os benefícios do nosso aplicativo.', 
            imagePath: 'assets/png/image3.png'
          ),
        ], 
        skipButtonVisibility: true,
      ),
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
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
