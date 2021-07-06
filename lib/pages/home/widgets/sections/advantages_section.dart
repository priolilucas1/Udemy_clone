import 'package:flutter/material.dart';
import 'package:udemy_clone/breakpoints.dart';

class AdvantagesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buildAdvantage(String title, String subtitle) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ],
      );
    }

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      child: LayoutBuilder(builder: (context, constraints) {
        return Wrap(
          alignment: constraints.maxWidth < mobileBreakpoint
              ? WrapAlignment.start
              : WrapAlignment.spaceEvenly,
          runSpacing: 16,
          spacing: 8,
          children: [
            buildAdvantage('+45.000 alunos', 'Didática garantida'),
            buildAdvantage(
                'Escolha entre 1000 cursos', 'Publicados mensalmente'),
            buildAdvantage(
                'Professores qualificados', 'Todos pertinho de você'),
          ],
        );
      }),
    );
  }
}
