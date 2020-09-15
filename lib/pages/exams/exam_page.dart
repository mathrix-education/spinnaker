import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/pages/exams/exam_first_screen.dart';
import 'package:mathrix_education_app/pages/exams/standard_exam_page.dart';
import 'package:mathrix_education_app/pages/exams/timmer_section.dart';

enum ExamMode {
  start,
  playing,
  paused,
  correction,
  end,
}

class ExamPage extends StatefulWidget {
  final String examId;

  final String examName;

  final GlobalKey<TimerSectionState> timerSectionKey = GlobalKey<TimerSectionState>();

  ExamPage({this.examId, this.examName});

  @override
  _ExamPageState createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  ExamMode _mode = ExamMode.start;

  @override
  Widget build(BuildContext context) {
    return StandardExamPage(
        examName: widget.examName,
        examId: widget.examId,
        builder: (ReadExam$Query data) {
          ReadExam$Query$Exam exam = data.readExam;
          if (_mode == ExamMode.start) {
            return ExamFirstScreen(
              minutes: exam.duration,
              onStart: () => setState(() {
                _mode = ExamMode.playing;
              }),
            );
          } else if (_mode == ExamMode.paused || _mode == ExamMode.playing) {
            return Column(children: [
              TimerSection(
                key: widget.timerSectionKey,
                duration: exam.duration,
                onTimerExpired: () {
                  setState(() {
                    _mode = ExamMode.end;
                  });
                },
              ),
            ]);
          } else {
            return Text('end');
          }
        });
  }
}
