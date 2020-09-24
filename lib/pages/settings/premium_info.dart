import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/texts/headline_3.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'package:mathrix_education_app/ui/widgets/mtx_card.dart';

class PremiumInfo extends StatelessWidget {
  Widget build(BuildContext context) {
    return MtxCard(
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Headline3(text: 'Mode Machine activé', color: green),
            Text('Pour te désabonner, envoie un email à support@mathrix.fr'),
          ],
        ),
      ),
    );
  }
}
