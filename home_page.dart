import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widget/itaem_widget.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "CodePur";
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatalogModels.Item[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: Drawer(),
    );
  }
}
