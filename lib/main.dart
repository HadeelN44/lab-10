import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var url = "assets/images/Alart.JPG";
  var str = "Alart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(url),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: ElevatedButton(
                child: Text(str),
                onPressed: () => {
                  if (str == "Alart")
                    {
                      setState(() {
                        url = "assets/images/StopAlart.JPG";
                        str = "Stop Alart";
                      })
                    }
                  else
                    {
                      setState(() {
                        url = "assets/images/Alart.JPG";
                        str = "Alart";
                      })
                    }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
