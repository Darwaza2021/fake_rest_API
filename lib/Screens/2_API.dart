import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Test_2 extends StatelessWidget {
  const Test_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(' 2_API'),
      ),
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: getEmailsFromComments(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Text(' $index ' + snapshot.data![index]);
                },
              );
            }
          },
        ),
      ),
    );
  }
}

Future<List<dynamic>> getEmailsFromComments() async {
  String theUrl = "https://jsonplaceholder.typicode.com/albums";

  http.Response response = await http.get(Uri.parse(theUrl));

  List decodedJson = jsonDecode(response.body);

  return decodedJson.map((e) => e["title"]).toList();}