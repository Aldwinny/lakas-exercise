import 'package:lakas/models/exercise.dart';

/// Routine contains a set of exercises and breaks
class Routine {
  Routine({required this.exercises});

  List<Exercise> exercises;
  List<RoutineStatus>? statuses;
  ExerciseDifficulty? difficulty;

  /// This is the function trat translates the routine data into a JSON readable data for sending to firebase.
  Map<String, dynamic> toMap() {
    // TODO: Implement toArray function
    return {
      "name": "name",
      "sample1": 1,
    };
  }

  Routine? createFrom({required Map<String, dynamic> map}) {
    // TODO: Return a routine object based on the mapping retrieve from firebase
    return null;
  }
}

enum RoutineStatus { completed, incomplete, fail }
