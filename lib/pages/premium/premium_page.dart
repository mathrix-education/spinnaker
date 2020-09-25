import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/ui/buttons/primary_text_button.dart';
import 'package:mathrix_education_app/ui/layouts/standard_page.dart';
import 'package:mathrix_education_app/ui/texts/body.dart';
import 'package:mathrix_education_app/ui/texts/body_bold.dart';
import 'package:mathrix_education_app/ui/texts/headline_3.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'package:mathrix_education_app/ui/variables/gradients.dart';
import 'package:mathrix_education_app/ui/widgets/mtx_card.dart';
import 'package:mathrix_education_app/ui/widgets/mtx_rounded_widget.dart';
import 'package:mathrix_education_app/ui/widgets/query_container.dart';

class PremiumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StandardPage(
      title: 'Mode Machine',
      body: QueryContainer(
        query: ListPlansQuery(),
        builder: (ListPlans$Query data) {
          List<ListPlans$Query$Plan> lisPlans = data.listPlans;
          return SingleChildScrollView(
            child: Column(
                children: lisPlans.where((element) => element.id.startsWith('laser')).map((e) {
              String plan = plansNames[e.id];
              String period = planPeriod[e.period];
              return Column(
                children: [
                  MtxCard(
                      child: MtxRoundedWidget(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(gradient: greenGradient),
                          width: double.infinity,
                          child: Column(
                            children: [
                              Headline3(
                                text: 'Plan $plan',
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        SizedBox(
                          height: 36,
                          child: Visibility(
                            visible: e.id == 'laser_year',
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: orangeLight, borderRadius: BorderRadius.all(Radius.circular(16))),
                              child: BodyBold(text: 'Mathrix Recommande', color: orange),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '27,90€',
                              style: TextStyle(
                                  fontSize: 42, fontWeight: FontWeight.w600, color: green, fontFamily: 'Poppins'),
                            ),
                            SizedBox(width: 16),
                            Body(text: '/mois*', color: grey),
                          ],
                        ),
                        SizedBox(height: 16),
                        PrimaryTextButton(
                          text: 'Choisir la formule',
                          enabled: true,
                          width: 190,
                          onPressed: () {},
                        ),
                        SizedBox(height: 16),
                      ],
                    ),
                  )),
                  Text('Formule renouvelée tous les $period, anulable à tout moment.', style: TextStyle(fontSize: 12)),
                ],
              );
            }).toList()),
          );
        },
      ),
    );
  }

  final Map<String, dynamic> plansNames = {
    /// TODO,  dynamic configuration
    'laser_month': 'mensuel',
    'laser_quarter': 'trimestriel',
    'laser_semester': 'semestre',
    'laser_year': 'annuel'
  };
}
