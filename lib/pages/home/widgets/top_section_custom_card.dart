import 'package:flutter/material.dart';
import 'package:udemy_clone/pages/home/widgets/custom_search_field.dart';

class TopSectionCustomCard extends StatelessWidget {
  final double width;
  final double titleSize;
  final double descriptionSize;

  const TopSectionCustomCard({
    required this.width,
    required this.titleSize,
    required this.descriptionSize,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      elevation: 8,
      child: Container(
        padding: const EdgeInsets.all(22),
        width: width,
        child: Column(
          children: [
            Text(
              'Aprenda Flutter com este curso',
              style: TextStyle(
                fontSize: titleSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Bora aprender Flutter com o professor Lucas Prioli! Cursos por apenas R\$22,90. Qualidade garantida.',
              style: TextStyle(
                fontSize: descriptionSize,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            CustomSearchField(),
          ],
        ),
      ),
    );
  }
}
