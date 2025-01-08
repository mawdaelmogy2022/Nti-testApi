import 'package:flutter/material.dart';
import 'package:testapi/feature/home/data/model/post_model.dart';


class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.postModel});
  final PostModel postModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration:const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pink,
              ),
              child: Center(
                child: Text(
                  "${postModel.id}",
                  style:const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const   SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    postModel.title,
                    style:const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ),
                const  SizedBox(height: 8),
                  Text(
                    postModel.description,
                    style:const TextStyle(color: Colors.blueGrey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}