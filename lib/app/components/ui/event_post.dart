import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EventPost extends StatelessWidget {
  final String image;
  final String local;
  final String date;
  final String? initialTime;
  final String? finalTime;
  final String event;
  final String tags;

  const EventPost({
    super.key,
    required this.image,
    required this.local,
    required this.date,
    required this.event,
    required this.tags,
    this.initialTime,
    this.finalTime,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 7, bottom: 7),
          padding: const EdgeInsets.only(left: 10, top: 10),
          width: MediaQuery.of(context).size.width * .9,
          height: 180,
          decoration: const BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  image,
                  width: MediaQuery.of(context).size.width * .32,
                  height: MediaQuery.of(context).size.height * .18,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    local,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    date,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "$initialTime - $finalTime",
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    event,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      width: 90,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: Center(
                          child: Text(
                        tags,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.thumb_up),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notification_add),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Ver mais',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
