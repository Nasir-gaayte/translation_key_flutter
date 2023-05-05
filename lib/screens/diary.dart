import 'package:flutter/material.dart';

class DiaryScreen extends StatelessWidget {
  const DiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 243, 170, 194),
      child: ListView.separated(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: const [
                  Text('Date here'),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Content here')
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => const Divider(
                height: 5,
              ),
          itemCount: 3),
    );
  }
}
