
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String category;
  final IconData? categoryIcon;
  final Color iconColor;

  const CardWidget({Key? key,
    required this.category,
    required this.categoryIcon,
    required this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 60,
      width: 40,
      decoration: const BoxDecoration(
        color: Colors.blueGrey,
        shape: BoxShape.circle,
        borderRadius: BorderRadius.all(Radius.circular(8.0))
      ),
      child: Card(
        child:Column(
          children: [
            ClipOval(
              child: Icon(categoryIcon,
                  size: 20,
                  color:iconColor),

            ),
            Text(category,
              style: const TextStyle(fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500), )
          ],
        )

      ),
    );
  }
}
