import 'package:flutter/material.dart';
import 'package:healthcares/data/dummy_Dessert_Menu.dart'; 

class DessertMenuScreen extends StatefulWidget {
  const DessertMenuScreen({super.key});

  @override
  State<DessertMenuScreen> createState() => _DessertMenuScreenState();
}

class _DessertMenuScreenState extends State<DessertMenuScreen> {
  final List<int> _itemCounts = List.generate(dummydessertMenu.length, (index) => 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dessert Menu'),
        backgroundColor: const Color.fromARGB(255, 77, 63, 44),
      ),
      body: ListView.builder(
        itemCount: dummydessertMenu.length,
        itemBuilder: (ctx, index) {
          final menu = dummydessertMenu[index]; 
          return InkWell(
            child: Card(
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 4,
              child: Column(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        child: Image.network(
                          menu.imageUrldessert,
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        right: 10,
                        child: Container(
                          width: 300,
                          color: Colors.black54,
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 20,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                menu.titledessert,
                                style: const TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                ),
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Calories: ${menu.caloriedessert}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            setState(() {
                              if (_itemCounts[index] > 0) {
                                _itemCounts[index]--;
                              }
                            });
                          },
                          icon: const Icon(Icons.remove, color: Colors.black),
                          label: const Text("Remove"),
                        ),
                        Text(
                          _itemCounts[index].toString(),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {
                            setState(() {
                              _itemCounts[index]++;
                            });
                          },
                          icon: const Icon(Icons.add, color: Colors.black),
                          label: const Text("Add"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
