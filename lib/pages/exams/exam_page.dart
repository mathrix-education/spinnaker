import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/pages/exams/exam_first_screen.dart';
import 'package:mathrix_education_app/pages/exams/standard_exam_page.dart';
import 'package:mathrix_education_app/pages/exams/timmer_section.dart';
import 'package:mathrix_education_app/ui/buttons/primary_text_button.dart';
import 'package:mathrix_education_app/ui/silicate/silicate_wrapper.dart';

import 'exam_paused_dialog.dart';
import 'exam_recap_section.dart';

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
          } else if (_mode == ExamMode.paused || _mode == ExamMode.playing || _mode == ExamMode.correction) {
            return Column(children: [
              TimerSection(
                key: widget.timerSectionKey,
                duration: exam.duration,
                mode: _mode,
                onTimerExpired: () {
                  setState(() {
                    _mode = ExamMode.end;
                  });
                },
                onPause: () {
                  setState(() {
                    _mode = ExamMode.paused;
                  });
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (_) => ExamPausedDialog(
                      onResume: () {
                        setState(() {
                          _mode = ExamMode.playing;
                        });
                      },
                    ),
                  );
                },
              ),
              Expanded(child: SilicateWrapper(wall: exam.content)),
              Visibility(
                visible: _mode == ExamMode.playing || _mode == ExamMode.correction,
                child: PrimaryTextButton(
                  text: _mode == ExamMode.playing ? 'J\'ai fini' : 'Passer au debriefing',
                  onPressed: () => setState(() {
                    _mode = ExamMode.end;
                  }),
                ),
              ),
            ]);
          } else {
            return ExamRecapSection(
              onCorrection: () => setState(() {
                _mode = ExamMode.correction;
              }),
              onRestart: () => setState(() {
                _mode = ExamMode.start;
              }),
            );
          }
        });
  }
}
