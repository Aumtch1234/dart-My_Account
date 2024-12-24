import 'package:flutter/material.dart';
import 'package:myaccount/MoneyBox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Account | black WA',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'My Account'),
      debugShowCheckedModeBanner: false,
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
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              MoneyBox("ยอดเงินคงเหลือ :", 80000.25, Colors.lightBlue, 150),
              SizedBox(
                height: 5,
              ),
              MoneyBox("รายรับ :", 36000.39, Colors.green, 150),
              SizedBox(
                height: 5,
              ),
              MoneyBox("รายจ่าย :", 2000.00, Colors.red, 150),
              SizedBox(
                height: 5,
              )

              // Container(
              //   padding: const EdgeInsets.all(10),
              //   decoration: BoxDecoration(
              //       color: Colors.blue,
              //       borderRadius: BorderRadius.circular(20)),
              //   height: 150,
              //   child: const Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Text(
              //         'ยอดคงเหลือ : ',
              //         style: TextStyle(fontSize: 50, color: Colors.white),
              //       ),
              //       Expanded(
              //           child: Text('5,000,000.- กีบ',
              //               textAlign: TextAlign.right,
              //               style:
              //                   TextStyle(fontSize: 50, color: Colors.white)))
              //     ],
              //   ),
              // ),
              // Container(
              //   padding: const EdgeInsets.all(10),
              //   decoration: BoxDecoration(
              //       color: Colors.green,
              //       borderRadius: BorderRadius.circular(20)),
              //   height: 150,
              //   child: const Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Text(
              //         'รายรับ : ',
              //         style: TextStyle(fontSize: 50, color: Colors.white),
              //       ),
              //       Expanded(
              //           child: Text('1,000,000.- กีบ',
              //               textAlign: TextAlign.right,
              //               style:
              //                   TextStyle(fontSize: 50, color: Colors.white)))
              //     ],
              //   ),
              // ),
              // Container(
              //   padding: const EdgeInsets.all(10),
              //   decoration: BoxDecoration(
              //       color: Colors.red, borderRadius: BorderRadius.circular(20)),
              //   height: 150,
              //   child: const Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Text(
              //         'รายจ่าย : ',
              //         style: TextStyle(fontSize: 50, color: Colors.white),
              //       ),
              //       Expanded(
              //           child: Text('6,000,000.- กีบ',
              //               textAlign: TextAlign.right,
              //               style:
              //                   TextStyle(fontSize: 50, color: Colors.white)))
              //     ],
              //   ),
              // ),
            ],
          ),
        ));
  }
}
