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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple.shade600),
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


  @override
  Widget build(BuildContext context){

     var itemImages = [];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Custom Widgets'),
      ),
      body:
           TransactionHistory(),

    );
  }
}


/*class DateTime extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

  }

}*/



class TransactionHistory extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var arrItemName = ['Restaurant', 'Fuel', 'Shopping', 'Service', 'Room Rent', 'Electric bill' 'Groceries', 'Haircut', 'Ayush', 'Shivam'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction History '),
      ),
     body: ListView.separated(itemBuilder: (context, index) {
    return ListTile(
    leading: CircleAvatar(
    backgroundImage: AssetImage('assets/images/restaurant.png'),
    ),
    title: Text(arrItemName[index]),
    subtitle: Text('23 Feb 11:26 PM'),
    trailing: SizedBox(
      width: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
           Icon(Icons.currency_rupee_outlined),
           Text('-2579.36', style: TextStyle(color: Colors.red, fontSize: 15),)
        ],
      ),
    ),
    );
    },
       itemCount: arrItemName.length,
       separatorBuilder: (context, index){
       return Divider(thickness: 2,height: 10);
       },
     )
    );
  }

}


