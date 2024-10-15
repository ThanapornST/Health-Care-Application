import 'package:flutter/material.dart';
import 'package:healthcares/widget/button_page.dart';

class SelectCalcultion extends StatefulWidget {
  const SelectCalcultion({this.name, this.imageUrl, this.logoUrl, super.key});

  final String? name;
  final String? imageUrl;
  final String? logoUrl;

  @override
  State<SelectCalcultion> createState() => _SelectCalcultionState();
}

class _SelectCalcultionState extends State<SelectCalcultion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(
            255, 77, 63, 44), 
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.350,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 77, 63, 44),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipOval(
                            child: Image.network(
                              'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/52f9b33a-ed74-4534-bef2-37ed42a37782/dgmznhd-30187d86-55aa-4b78-bf0a-f1d58cbbb355.png/v1/fit/w_828,h_1038/chisato_and_takina_render_by_apriononurhakim_dgmznhd-414w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9Mzg0OCIsInBhdGgiOiJcL2ZcLzUyZjliMzNhLWVkNzQtNDUzNC1iZWYyLTM3ZWQ0MmEzNzc4MlwvZGdtem5oZC0zMDE4N2Q4Ni01NWFhLTRiNzgtYmYwYS1mMWQ1OGNiYmIzNTUucG5nIiwid2lkdGgiOiI8PTMwNzIifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.9U6Pqz4QGYBTzy1e3wYhjicsPlzFlpIJScFS1m2GgtY',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return const Icon(Icons.error, size: 60);
                              },
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  widget.name ?? 'Unknown User',
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Date: ${DateTime.now().toString().split(' ')[0]}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Image.network(
                            'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/52f9b33a-ed74-4534-bef2-37ed42a37782/dgmznhd-30187d86-55aa-4b78-bf0a-f1d58cbbb355.png/v1/fit/w_828,h_1038/chisato_and_takina_render_by_apriononurhakim_dgmznhd-414w-2x.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9Mzg0OCIsInBhdGgiOiJcL2ZcLzUyZjliMzNhLWVkNzQtNDUzNC1iZWYyLTM3ZWQ0MmEzNzc4MlwvZGdtem5oZC0zMDE4N2Q4Ni01NWFhLTRiNzgtYmYwYS1mMWQ1OGNiYmIzNTUucG5nIiwid2lkdGgiOiI8PTMwNzIifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.9U6Pqz4QGYBTzy1e3wYhjicsPlzFlpIJScFS1m2GgtY',
                            width: 60,
                            height: 60,
                            fit: BoxFit.contain,
                            errorBuilder: (context, error, stackTrace) {
                              return const Icon(Icons.error, size: 60);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // คอนเทนเนอร์ข้อมูลแคลอรี่
              Positioned(
                top: MediaQuery.of(context).size.height *
                    0.16, 
                left: 16,
                right: 16,
                child: Container(
                  padding: const EdgeInsets.all(19.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF6F6F6), 
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    border: Border.all(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                  child: const Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.restaurant, size: 30),
                                  SizedBox(width: 8),
                                  Text("รับประทาน cal"),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.bolt, size: 30),
                                  SizedBox(width: 8),
                                  Text("เผาผลาญ cal"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("วันนี้คุณยังรับประทานได้อีก"),
                            SizedBox(height: 5),
                            Text("3520 kcal",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "ดูเพิ่มเติม",
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(
              height: 1),

          const Expanded(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.0),
              child: ButtonPage(),
            ),
          ),
        ],
      ),
    );
  }
}
