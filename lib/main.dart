import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExpandedFlexiblePage(), // Panggil FirstScreen di sini
    );
  }
}

    class ExpandedFlexiblePage extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    ExpandedWidget(),
                    FlexibleWidget(),
                  ],
                ),
                Row(
                  children: [
                    ExpandedWidget(),
                    ExpandedWidget(),
                  ],
                ),
                Row(
                  children: [
                    FlexibleWidget(),
                    FlexibleWidget(),
                  ],
                ),
                Row(
                  children: [
                    FlexibleWidget(),
                    ExpandedWidget(),
                  ],
                ),
              ],
            ),
          ),
        );
      }
    }
     
    class ExpandedWidget extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.teal,
              border: Border.all(color: Colors.white),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Expanded',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
        );
      }
    }
     
    class FlexibleWidget extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Flexible(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.tealAccent,
              border: Border.all(color: Colors.white),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Flexible',
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 24,
                ),
              ),
            ),
          ),
        );
      }
    }

    // widget Flexible digunakan untuk mengatur ukuran widget di dalam Row atau Column secara fleksibel. Perbedaan Flexible dan Expanded adalah widget Flexible memungkinkan child widget-nya berukuran lebih kecil dibandingkan ukuran Flexible. Sementara, child widget dari Expanded harus menempati ruang yang tersisa dari Column atau Row.