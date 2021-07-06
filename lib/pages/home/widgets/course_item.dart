import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          'https://previews.123rf.com/images/pratyaksa/pratyaksa1701/pratyaksa170100047/69482521-person-working-on-computer-programming-or-coding-concept-modern-isometric-illustration-for-web-banne.jpg',
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 4),
        Flexible(
          child: AutoSizeText(
            'Aprende Responsividade Com Flutter',
            minFontSize: 3,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'Lucas Prioli',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        Text(
          'R\$24,99',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
