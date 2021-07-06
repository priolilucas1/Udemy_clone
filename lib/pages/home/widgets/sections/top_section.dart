import 'package:flutter/material.dart';
import 'package:udemy_clone/breakpoints.dart';
import 'package:udemy_clone/pages/home/widgets/top_section_custom_card.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        if (maxWidth >= tabletBreakpoint) {
          return AspectRatio(
            aspectRatio: 3.7,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 4,
                  child: Image.network(
                    'https://images.pexels.com/photos/17663/pexels-photo.jpg?cs=srgb&dl=pexels-adrianna-calvo-17663.jpg&fm=jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 50,
                  child: TopSectionCustomCard(
                    width: 450,
                    titleSize: 40,
                    descriptionSize: 15,
                  ),
                ),
              ],
            ),
          );
        }
        if (maxWidth >= mobileBreakpoint) {
          return SizedBox(
            height: 320,
            child: Stack(
              children: [
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Image.network(
                    'https://images.pexels.com/photos/17663/pexels-photo.jpg?cs=srgb&dl=pexels-adrianna-calvo-17663.jpg&fm=jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 20,
                  child: TopSectionCustomCard(
                    width: 350,
                    titleSize: 35,
                    descriptionSize: 15,
                  ),
                ),
              ],
            ),
          );
        }

        return Column(
          children: [
            AspectRatio(
              aspectRatio: 3.4,
              child: Image.network(
                'https://images.pexels.com/photos/17663/pexels-photo.jpg?cs=srgb&dl=pexels-adrianna-calvo-17663.jpg&fm=jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TopSectionCustomCard(
                width: double.infinity,
                titleSize: 35,
                descriptionSize: 15,
                isMobile: true,
              ),
            )
          ],
        );
      },
    );
  }
}
