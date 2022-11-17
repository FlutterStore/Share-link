import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Copytext(),
    );
  }
}

class Copytext extends StatefulWidget {
  const Copytext({super.key});

  @override
  State<Copytext> createState() => _CopytextState();
}

class _CopytextState extends State<Copytext> {

  String link = 'https://github.com/FlutterStore/Check-internet-connection-with-listener';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Share Link'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              link,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 15,
              ) 
            ),
            const SizedBox(height: 15,),
            InkWell(
              onTap: () {
                Share.share(link).then((value) => SnackBarrr(context,"Share Link"));
              },
              child: Container(
                height: 40,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Text('Share Link',style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


SnackBarrr(BuildContext context, String title){
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(title, style: const TextStyle(color: Colors.white),),
      ),
      backgroundColor: Colors.green.withOpacity(0.8),
      action: SnackBarAction(label: "",textColor: Colors.white, onPressed: (){}),
      padding: const EdgeInsets.only(top: 5,left: 8),
      duration: const Duration(seconds: 3),
    ),
  );
}