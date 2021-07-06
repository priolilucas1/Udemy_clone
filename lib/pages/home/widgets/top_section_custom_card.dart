import 'package:flutter/material.dart';
import 'package:udemy_clone/pages/home/widgets/custom_search_field.dart';

class TopSectionCustomCard extends StatelessWidget {
  final double width;
  final double titleSize;
  final double descriptionSize;
  final bool isMobile;

  const TopSectionCustomCard({
    required this.width,
    required this.titleSize,
    required this.descriptionSize,
    this.isMobile = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isMobile) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Estude para o seu futuro',
            style: TextStyle(
              fontSize: titleSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Comece a correr atrás dos seus objetivos. Cursos a partir de R\$27,90. Qualidade garantida.',
            style: TextStyle(
              fontSize: descriptionSize,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          CustomSearchField(),
        ],
      );
    }

    return Card(
      color: Colors.black,
      elevation: 8,
      child: Container(
        padding: const EdgeInsets.all(22),
        width: width,
        child: Column(
          children: [
            Text(
              'Estude para o seu futuro',
              style: TextStyle(
                fontSize: titleSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Comece a correr atrás dos seus objetivos. Cursos a partir de R\$27,90. Qualidade garantida.',
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
