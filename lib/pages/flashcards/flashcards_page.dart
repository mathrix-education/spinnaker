import 'dart:math';

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/ui/layouts/standard_page.dart';
import 'package:mathrix_education_app/ui/silicate/silicate_wrapper.dart';
import 'package:mathrix_education_app/ui/widgets/query_container.dart';

class FlashcardsPage extends StatelessWidget {
  final String flashcardsName;
  final String flashcardsId;

  const FlashcardsPage({this.flashcardsName, this.flashcardsId});

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      title: flashcardsName,
      body: QueryContainer(
          query: ReadFlashcardQuery(),
          variables: ReadFlashcardArguments(id: flashcardsId),
          builder: (ReadFlashcard$Query data) {
            List<dynamic> flashcards = data.readFlashcard.content;

            return Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: FlipCard(
                  direction: FlipDirection.HORIZONTAL,
                  front: buildCard(flashcards[0].front),
                  back: buildCard(flashcards[0].back),
                ),
              ),
            );
          }),
    );
  }

  buildCard(content) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: SizedBox(
          height: 250,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [SilicateWrapper(wall: content)],
          ),
        ));
  }
}
