import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/ui/layouts/standard_page.dart';
import 'package:mathrix_education_app/ui/silicate/silicate_wrapper.dart';
import 'package:mathrix_education_app/ui/widgets/query_container.dart';

import 'exercise_selector_button.dart';

class ExercisesPage extends StatefulWidget {
  /// The subject id.
  final String subjectId;

  /// The subject name.
  final String subjectName;

  const ExercisesPage({Key key, this.subjectId, this.subjectName}) : super(key: key);

  @override
  _ExercisesPageState createState() => _ExercisesPageState();
}

class _ExercisesPageState extends State<ExercisesPage> {
  int _selectedExerciseIndex = 0;

  @override
  Widget build(BuildContext context) {
    return StandardPage(
        title: widget.subjectName,
        body: QueryContainer(
          query: ReadSubjectQuery(),
          variables: ReadSubjectArguments(id: widget.subjectId),
          builder: (ReadSubject$Query data) {
            List<ReadSubject$Query$Subject$Exercise> exercises = data.readSubject.exercises;

            List<Widget> list = new List.generate(exercises.length, (exerciseIndex) {
              int buttonNumber = exerciseIndex + 1;
              return ExerciseSelectorButton(
                succeeded: exerciseSucceeded(exercises[exerciseIndex]),
                selected: exerciseIndex == _selectedExerciseIndex,
                buttonText: '$buttonNumber',
                first: exerciseIndex == 0,
                last: exerciseIndex == exercises.length - 1,
                onTap: (){
                  setState(() {
                    _selectedExerciseIndex = exerciseIndex;
                  });
                },
              );
            });

            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Row(
                    children: list,
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ),
                Expanded(
                  child: SilicateWrapper(
                    wall: exercises[0].content,
                  ),
                ),
              ],
            );
          },
        ));
  }

  /// Assert that an exercise has been successfully completed.
  exerciseSucceeded(ReadSubject$Query$Subject$Exercise exercise) {
    if (exercise.interaction == null) {
      return null;
    }
    return exercise.interaction.score == 1;
  }
}
