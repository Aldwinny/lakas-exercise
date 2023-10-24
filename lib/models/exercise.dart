import 'package:flutter/material.dart';

/// Exercise contains information regarding an exercise
class Exercise {
  Exercise(this.name,
      {this.photo,
      this.description,
      this.duration,
      this.count,
      this.difficulty = ExerciseDifficulty.normal,
      this.exerciseType = WorkoutType.exercise,
      this.muscleGroups}) {
    if (description != null && duration != null) {
      throw AssertionError("Both description and duration are defined!");
    }
  }

  /// This is the photo used in representing the exercise.
  Image? photo;

  /// This is the name of the exercise
  String name;

  /// This is the description of the exercise. Sounds obvious enough..
  String? description;

  /// This is the duration of the exercise which means that the exercise must be done during certain amount of time. It is important to either define only either the duration or the count.
  int? duration;

  /// This is the count of the exercise which means that the exercise must be done a certain amount of times. It is important to either define only either the duration or the count.
  int? count;

  ExerciseDifficulty difficulty;
  WorkoutType exerciseType;
  List<MuscleGroups>? muscleGroups;

  Map<String, dynamic> toMap() {
    // TODOD: implement toArray function
    return {"name": "john doe"};
  }

  Exercise? createFrom({required Map<String, dynamic> map}) {
    // TODO: return a routine object based on the mapping retrieved from firebase
    return null;
  }
}

/// This defines the difficulty of the exercise, it is just a flair used for representing the exercise.
enum ExerciseDifficulty { easy, normal, hard }

/// This defines the type of workout.
enum WorkoutType { warmup, exercise, stretch }

/// This defines the targetted muscle groups by the exercise.
enum MuscleGroups {
  // Chest
  chest,

  // Back
  back,
  shoulders,

  // Arms
  biceps,
  triceps,
  forearms,
  latissimusDorsi,

  // Abdominal
  abdominals,

  // Legs
  glutes,
  quadriceps,
  hamstrings,
  calves
}
