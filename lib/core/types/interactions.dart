/// Since the generated enums and class from Artemis are unique to the class, a manual class is required to
/// be used in widgets without typing issue.

enum InteractionType {
  course,
  exam,
  exercise,
  flashcard,
  subject,
}

enum Comprehension {
  blur,
  clear,
}

class Interaction {
  String userId;
  String interactableId;
  int score;
  int total;
  int watchtime;
}
