import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


import '../widgets/bottom_menu.dart';

class LessonScreen extends StatelessWidget {
  const LessonScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: colors["primary"],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            snap: true,
            title: TextField(
              decoration: InputDecoration(
                hintText: "Ara...",
                filled: true,
                fillColor: Theme.of(context).colorScheme.surfaceVariant,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: Icon(Icons.tune),
                  onPressed: () {
                    // Filtre dialog
                  },
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Son Eğitimler",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      ActionChip(
                        label: Text("C 4"),
                        onPressed: () {},
                        avatar: Icon(Icons.history, size: 16),
                      ),
                      ActionChip(
                        label: Text("C 2"),
                        onPressed: () {},
                        avatar: Icon(Icons.history, size: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(16),
            sliver: SliverGrid(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    mainAxisSpacing: 5,
    crossAxisSpacing:5,
    childAspectRatio: 1.60,
  ),
  delegate: SliverChildBuilderDelegate(
    (context, index) {
      return InkWell(
         onTap: () => context.push("/content"),
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
  aspectRatio: 25 / 9,
  child: Container(
    color: Theme.of(context).colorScheme.secondaryContainer,
    child: Icon(
      Icons.code, // İkon tipi
      size: 48, // İkon boyutu
      color: Theme.of(context).colorScheme.onSecondaryContainer, // Renk
    ),
  ),
),

              Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "C ${index + 1}",
                      style: Theme.of(context).textTheme.titleMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "C Eğitimine başla",
                      style: Theme.of(context).textTheme.bodySmall,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
    childCount: 10,
  ),
),

          ),
        ],
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}