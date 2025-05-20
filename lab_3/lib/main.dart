import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
      ),
      home: const MyHomePage(title: 'Lab 3'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(


      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [


        ],
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
          Text("BROWSE CATEGORIES", style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900),),
          Text("Not sure about exactly which recipe you're looking for? Do a search, or dive into our most popular categories."
              , style: TextStyle(fontSize: 20.0)),
          Text("BY MEAT", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  CircleAvatar(backgroundImage: AssetImage("images/beef.jpg"), radius: 80,),
                  Text("BEEF", style: TextStyle(fontSize: 30, color: Colors.white),),
                ],
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  CircleAvatar(backgroundImage: AssetImage("images/chicken.jpg"), radius: 80,),
                  Text("CHICKEN", style: TextStyle(fontSize: 30, color: Colors.white),),
                ],
              ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                CircleAvatar(backgroundImage: AssetImage("images/pork.jpg"), radius: 80,),
                Text("PORK", style: TextStyle(fontSize: 30, color: Colors.white),),
              ],
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                CircleAvatar(backgroundImage: AssetImage("images/seafood.jpg"), radius: 80,),
                Text("SEAFOOD", style: TextStyle(fontSize: 30, color: Colors.white),),
              ],
            ),

          ],
          ),
          Text("BY COURSE", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                CircleAvatar(backgroundImage: AssetImage("images/main_dishes.jpg"), radius: 80,),
                Text("Main Dishes", style: TextStyle(fontSize: 15, color: Colors.white),),
              ],
            ),
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                CircleAvatar(backgroundImage: AssetImage("images/salad.jpg"), radius: 80,),
                Text("Salad Recipes", style: TextStyle(fontSize: 15, color: Colors.white),),
              ],
            ),
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                CircleAvatar(backgroundImage: AssetImage("images/side_dishes.jpg"), radius: 80,),
                Text("Side Dishes", style: TextStyle(fontSize: 15, color: Colors.white),),
              ],
            ),
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                CircleAvatar(backgroundImage: AssetImage("images/crockpot.jpg"), radius: 80,),
                Text("Crockpot", style: TextStyle(fontSize: 15, color: Colors.white),),
              ],
            ),

          ],
          ),
          Text("BY DESSERTS", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                CircleAvatar(backgroundImage: AssetImage("images/ice_cream.jpg"), radius: 80,),
                Text("Ice Cream", style: TextStyle(fontSize: 15, color: Colors.white),),
              ],
            ),
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                CircleAvatar(backgroundImage: AssetImage("images/brownies.jpg"), radius: 80,),
                Text("Brownies", style: TextStyle(fontSize: 15, color: Colors.white),),
              ],
            ),
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                CircleAvatar(backgroundImage: AssetImage("images/pies.jpg"), radius: 80,),
                Text("Pies", style: TextStyle(fontSize: 15, color: Colors.white),),
              ],
            ),
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                CircleAvatar(backgroundImage: AssetImage("images/cookies.jpg"), radius: 80,),
                Text("Cookies", style: TextStyle(fontSize: 15, color: Colors.white),),
              ],
            ),

          ],
          ),

        ]),
      ),
 // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
