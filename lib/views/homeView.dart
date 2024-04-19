import 'package:flutter/material.dart';
import 'package:fruits_shop/provider/provider.dart';
import 'package:fruits_shop/router/router.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<FruitProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fruit shop"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => FruitRow(
                index: index,
                name: model.fruitData[index]["name"],
                imageName: model.fruitData[index]["imageName"],
                description: model.fruitData[index]["description"],
                price: model.fruitData[index]["price"],
              ),
          separatorBuilder: (context, index) => const SizedBox(
                height: 16,
              ),
          itemCount: 10),
    );
  }
}

class FruitRow extends StatelessWidget {
  final int index;
  final String name;
  final String imageName;
  final int price;
  final String description;
  const FruitRow(
      {super.key,
      required this.index,
      required this.name,
      required this.imageName,
      required this.price,
      required this.description});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<FruitProvider>(context);
    return GestureDetector(
      onTap: () {
        model.currentIndex = index;
        Navigator.of(context).pushNamed(AppRoutes.info);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1, 
                blurRadius: 7, 
                offset: const Offset(3, 3), 
              ),
            ],
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                child: SizedBox(
                  height: 150,
                  width: 150,
                  child: Image(
                    image: AssetImage('images/$imageName.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 22,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Text(name, style: TextStyle(fontSize: 16)),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 150,
                    child: Text(
                      description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    children: [
                      Text(
                        "${price.toString()}\₩",
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border,
                            color: Colors.amber,
                            size: 28,
                          )),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart,
                          color: Colors.amber,
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
