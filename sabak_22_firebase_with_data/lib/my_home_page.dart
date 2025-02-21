import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('I Need To write my DataBase'),
        ),
        body: StreamBuilder<QuerySnapshot>(
            stream: _db.collection("users").snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              }
              if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                return Text('No data found');
              }
              final user = snapshot.data!.docs;
              return ListView.builder(
                  itemCount: user.length,
                  itemBuilder: (context, index) {
                    var adam = user[index].data() as Map<String, dynamic>;
                    return ListTile(
                      leading: Text(adam["name"] ?? "no name"),
                    );
                  });
            }));
  }
}
