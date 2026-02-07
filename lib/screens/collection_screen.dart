import 'package:assignment_p_collection/refactored_widgets/collection_card.dart';
import 'package:flutter/material.dart';
import '../models/collection.dart';
class CollectionScreen extends StatefulWidget {
  const CollectionScreen({super.key});

  @override
  State<CollectionScreen> createState() => _CollectionScreenState();
}

class _CollectionScreenState extends State<CollectionScreen> {
  int? expandedIndex;

  // Replace these with your own asset paths
  final List<Collection> collections = [
    Collection(title: "Collection 1", images: [
      "assets/images/test.png",
      "assets/images/test.png",
      "assets/images/test.png",
      "assets/images/test.png",
      "assets/images/test.png",
    ]),
    Collection(title: "Collection 2", images: [
      "assets/images/test.png",
      "assets/images/test.png",
      "assets/images/test.png",
      "assets/images/test.png",
    ]),
    Collection(title: "Collection 3", images: [
      "assets/images/test.png",
      "assets/images/test.png",
    ]),
    Collection(title: "Collection 4", images: [
      "assets/images/test.png",
      "assets/images/test.png",
      "assets/images/test.png",
      "assets/images/test.png",
    ]),
    Collection(title: "Collection 5", images: [
      "assets/images/test.png",
      "assets/images/test.png",
      "assets/images/test.png",
      "assets/images/test.png",
    ]),
    Collection(title: "Collection 6", images: [
      "assets/images/test.png",
      "assets/images/test.png",
      "assets/images/test.png",
      "assets/images/test.png",
    ]),
    Collection(title: "Collection 7", images: [
      "assets/images/test.png",
      "assets/images/test.png",
      "assets/images/test.png",
      "assets/images/test.png",
    ]),
  ];

  void toggleExpansion(int index) {
    setState(() {
      expandedIndex = expandedIndex == index ? null : index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Collections"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: collections.length,
        itemBuilder: (context, index) {
          final collection = collections[index];
          final isExpanded = expandedIndex == index;

          return CollectionCard(
              collection: collection,
              isExpanded: isExpanded,
              onTap: ()=> toggleExpansion(index),
          );
        },
      ),
    );
  }
}
