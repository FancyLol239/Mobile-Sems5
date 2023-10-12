import 'package:appnews/detailberita.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: MyHomePage(key: UniqueKey()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({required Key key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 110.0),
          child: Text(
            'TH',
              style: TextStyle(
                fontFamily: 'Ancient',
                fontSize: 36.0,
                fontWeight: FontWeight.w500,
                color: Color(0xff000000),
              ),
            ),
          ),
        backgroundColor: Colors.white,
        elevation: 1,
        leading: Padding(
          padding: EdgeInsets.only(left: 15),
          child: Row(
            children: [
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFD9D9D9),
                ),
                child: Center(
                  child: IconButton(
                    icon: Icon(Icons.menu, size: 16.0),
                    onPressed: () {
                      
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFD9D9D9),
              ),
              child: Center(
                child: IconButton(
                  icon: Icon(Icons.search, size: 16.0),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFD9D9D9),
              ),
              child: Center(
                child: IconButton(
                  icon: Icon(Icons.notifications_none, size: 16.0),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ],
      ),
       body: Center(
        child: Column(
          children: [
            SizedBox(height: 40.0,),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Container(
                      child: Text (
                        'Breaking News',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w800,
                        ),
                        ),
                    ),
                    ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 125.0),
                    child: Container(
                      child: Text (
                        'View All',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF3FA1EC),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.0),
            Container(
              width: 340.0,
              height: 210.0,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(32.0),
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 18.0, top: 84.0),
                          child: Text(
                            'BERITA TERKINI',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 10.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 18.0, right: 18.0, bottom: 37.0),
                          child: Text(
                            'Mahasiswa Informatika Pusing dikarenakan praktikum 5x dalam seminggu',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 49.0, left: 25.0),
                    child: Text(
                      'Recomendation',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 49.0, left: 125.0),
                    child: Text(
                      'View All',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF3FA1EC)
                      ),
                    )
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return detailberita();
                }));
              },
              child: Padding(
                padding: EdgeInsets.only( top: 30.0), 
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25.0),
                        child: SizedBox(
                          width: 120.0,
                          height: 120.0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 3.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mahasiswa Informatika Pusing dikarenakan praktikum 5x dalam seminggu',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
              ),
            ),

            SizedBox(height: 30.0),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25.0), 
                  child: SizedBox(
                    width: 120.0,
                    height: 120.0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 7.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mahasiswa Informatika Pusing dikarenakan praktikum 5x dalam seminggu',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}
