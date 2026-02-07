import 'package:flutter/material.dart';
import 'overlaybadge.dart';
import '../models/collection.dart';
class CollectionCard extends StatelessWidget {
  final Collection collection;
  final bool isExpanded;
  final VoidCallback onTap;
  const CollectionCard({
    super.key,
    required this.collection,
    required this.isExpanded,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                collection.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(
                isExpanded
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
              ),
            ),
            AnimatedCrossFade(
              duration: const Duration(milliseconds: 300),
              firstChild: const SizedBox.shrink(),
              secondChild: SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: collection.images.length,
                  itemBuilder: (context, imgIndex) {
                    final isLastVisible =
                        imgIndex == 2 && collection.images.length > 3;
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              collection.images[imgIndex],
                              fit: BoxFit.cover,
                              height: 120,
                              width: 120,
                            ),
                          ),
                          if (isLastVisible)
                            OverlayBadge(
                              extraCount: collection.images.length - 3,
                            ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              crossFadeState:
                  isExpanded
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
            ),
          ],
        ),
      ),
    );
  }
}
