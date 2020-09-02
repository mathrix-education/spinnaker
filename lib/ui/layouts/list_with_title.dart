import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/widgets/mathrix_card.dart';

typedef CardBuilder<T> = Widget Function(T item);

class CardListWithTitle<T> extends StatelessWidget {
  /// The list title.
  final Widget title;

  /// The card builder.
  final CardBuilder<T> builder;

  /// The item list.
  final List<T> itemList;

  /// On item tap event.
  final Function(T item) onItemTap;

  const CardListWithTitle({
    this.title,
    this.builder,
    this.itemList,
    this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: title,
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (_, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: MathrixCard(
                  child: builder(itemList[index]),
                  onTap: () => onItemTap(itemList[index]),
                ),
              );
            },
            itemCount: itemList.length,
          ),
        ],
      ),
    );
  }
}
