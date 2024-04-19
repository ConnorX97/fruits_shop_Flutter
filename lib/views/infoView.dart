import 'package:flutter/material.dart';
import 'package:fruits_shop/provider/provider.dart';
import 'package:provider/provider.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<FruitProvider>(context);
    final int currentIndex = model.currentIndex;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 340,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: AssetImage(
                    'images/${model.fruitData[currentIndex]['imageName']}.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, Index) => ClipRRect(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              model.fruitData[currentIndex]["name"],
                              style: const TextStyle(
                                  fontSize: 36, fontWeight: FontWeight.w600),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite_border,
                                color: Colors.amber,
                                size: 28,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(model.fruitData[currentIndex]["description"])
                      ],
                    ),
                  ),
                ),
              ),
              childCount: 1,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: () {},
        backgroundColor: Colors.amber,
        label: Container(
            width: 275, height: 30, child: Center(child: Text("Buy"))),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
