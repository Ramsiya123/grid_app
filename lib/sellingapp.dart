import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class SellingApp extends StatefulWidget {
  const SellingApp({super.key});

  @override
  State<SellingApp> createState() => _SellingAppState();
}

class _SellingAppState extends State<SellingApp> {
  Future<List<dynamic>> getData() async {
    final response = await http.get(Uri.parse('https://fakestoreapi.com/products/'));
    return jsonDecode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen1"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return InkWell(
                onTap: (){
                 // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
                },
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    final product = snapshot.data![index];
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.amber,
                          image: DecorationImage(image: NetworkImage(product['image']),
                          fit: BoxFit.cover),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 60,
                              top: 100,
                              child: Text(
                                "${product['title']}",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 30,
                              top: 250,
                              child: Container(
                                height: 30,
                                width: 180,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.green[200],
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(width: 4,),
                                    Icon(Icons.star, color: Colors.yellow[800]),
                                    SizedBox(width: 7,),
                                    Text(
                                      'Rate:${product['rating']['rate']}',
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 400,
                              top: 250,
                              child: Container(
                                height: 30,
                                width: 180,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.green[200],
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(width: 4,),
                                    Icon(Icons.attach_money_outlined, color: Colors.yellow[800]),
                                    SizedBox(width: 7,),
                                    Text(
                                       'price:${product['price']}',
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            } else if (snapshot.hasError) {
              return Text("Error: ${snapshot.error}");
            } else {
              return Center(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: CircularProgressIndicator()),
              );
            }
          },
        ),
      ),
    );
  }
}
class _AppState extends State<SellingApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: Container(
         width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              Container(
                height: 200,
                width: 100,
              ),
              Text("",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),)
            ],
          ),
        ),
      ),
    );
  }
}