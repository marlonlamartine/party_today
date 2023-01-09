import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:party_today/app/components/ui/event_post.dart';
import 'package:party_today/app/components/ui/filter_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                width: double.infinity,
                height: 120,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              DateFormat.yMMMEd().format(DateTime.now()),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Limoeiro do Norte',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.circle_notifications_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            icon: const Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ]),
                      ),
                    ]),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 30),
                  child: Text(
                    'Pesquisas Sugeridas',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: const [
                      FilterButton(index: 1, label: 'Hoje', isSelected: false),
                      FilterButton(
                          index: 2, label: 'Barzinho', isSelected: true),
                      FilterButton(
                          index: 3, label: 'Badalado', isSelected: false),
                      FilterButton(
                          index: 4, label: 'Voz e violão', isSelected: false),
                      FilterButton(
                          index: 5, label: 'Vaquejada', isSelected: false),
                      FilterButton(
                          index: 6, label: 'Pagode', isSelected: false),
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: const [
                Text(
                  'Pesquisa por: Barzinho',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                EventPost(
                    image: 'assets/images/boti.jpg',
                    local: 'Botiquim 2009',
                    date: '6 de Janeiro'),
                EventPost(
                    image: 'assets/images/bdz.jpg',
                    local: 'Bar do Zé',
                    date: '7 de Janeiro'),
                EventPost(
                    image: 'assets/images/barragem.jpg',
                    local: 'Bar do Carlinhos',
                    date: '10 de Janeiro'),
              ],
            ),
          ],
        ));
  }
}
