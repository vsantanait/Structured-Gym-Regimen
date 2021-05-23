// Write your code below 💪
struct Exercise {
  var name: String
  var muscleGroups: [String]
  var reps: Int
  var sets: Int
  var totalReps: Int

  init(name: String, muscleGroups: [String], reps: Int, sets: Int) {
    self.name = name
    self.muscleGroups = muscleGroups
    self.reps = reps
    self.sets = sets
    self.totalReps = reps * sets
  }

}

var pushUp = Exercise(name: "Push ups", muscleGroups: ["Triceps", "Chest", "Shoulders"], reps: 10, sets: 3)
//print(pushUp)

var sitUp = Exercise(name: "Sit ups", muscleGroups: ["Abdomen"], reps: 15, sets: 3)
//print(sitUp)

var squat = Exercise(name: "Squats", muscleGroups: ["Hip", "Knee", "Ankle", "Quads", "Hamstring", "Glutes"], reps: 20, sets: 2)
//print(squat)

struct Regimen {
  var dayOfWeek: String
  var exercises: [Exercise]

init(dayOfWeek: String, exercises: [Exercise]) {
  self.dayOfWeek = dayOfWeek
  self.exercises = exercises
}

func printExercisePlan() {
  print("Today is \(self.dayOfWeek) and the plan is to: ")
  for exercise in self.exercises {
    print("Do \(exercise.sets) sets of \(exercise.reps) reps of \(exercise.name)")
    print("That's a total of \(exercise.totalReps) \(exercise.name)")
  }
}

mutating func addExercise(exercise: Exercise) {
  self.exercises.append(exercise)
}

mutating func remExercise(exercise: Exercise) {
  var count = 0
  for i in self.exercises {
    if i.name == exercise.name {
      self.exercises.remove(at: count)
    }
    count += 1
  }
}

}

var mondayRegimen = Regimen(dayOfWeek: "Monday", exercises: [pushUp])

//print(mondayRegimen)
//mondayRegimen.printExercisePlan()

mondayRegimen.addExercise(exercise: sitUp)
mondayRegimen.printExercisePlan()

mondayRegimen.remExercise(exercise: pushUp)
mondayRegimen.printExercisePlan()

