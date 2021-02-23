import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfiniteList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text('$index'),
              title: Text(
                'Hello may cung',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              isThreeLine: true,
              subtitle: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                style: TextStyle(fontSize: 18),
              ),
            );
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
