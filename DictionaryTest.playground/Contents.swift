import Cocoa

struct Workouts:Codable,Hashable{
    let _id: String
    let name: String?
    let plan_category:String?
}

struct nameBasedWorkouts{
    let workoutName:String
    let workouts:[Workouts]
}



let workOutArray = [
    Workouts(_id: "65f8b8b7e4c2a0de8ea5a291", name: "Ultimate Abdominal Sculpt", plan_category: "Abdominal Workout"),
    Workouts(_id: "65f8b8b7e4c2a0de8ea5a291", name: "Ultimate Abdominal Sculpt", plan_category: "Shoulder Workout"),
    Workouts(_id: "65f8b8b7e4c2a0de8ea5a291", name: "Ultimate Abdominal Sculpt", plan_category: "Shoulder Workout"),
    Workouts(_id: "65f8b8b7e4c2a0de8ea5a291", name: "Ultimate Abdominal Sculpt", plan_category: "Biceps Workout"),
    Workouts(_id: "65f8b8b7e4c2a0de8ea5a291", name: "Ultimate Abdominal Sculpt", plan_category: "Biceps Workout"),
    Workouts(_id: "65f8b8b7e4c2a0de8ea5a291", name: "Ultimate Abdominal Sculpt", plan_category: "Triceps Workout"),
    Workouts(_id: "65f8b8b7e4c2a0de8ea5a291", name: "Ultimate Abdominal Sculpt", plan_category: "Triceps Workout"),
    Workouts(_id: "65f8b8b7e4c2a0de8ea5a291", name: "Ultimate Abdominal Sculpt", plan_category: "Abdominal Workout"),
]


func getDataforListings(workoutPlans:[Workouts]){
    
    var namedWorkouts = [nameBasedWorkouts]()
    var dictionaryOfGroupedData = [String:[Workouts]]()
    
    for workoutName in workoutPlans{
        
        dictionaryOfGroupedData[workoutName.plan_category!] = []
        
    }
    
    for workout in workoutPlans{
        dictionaryOfGroupedData[workout.plan_category!]?.append(workout)
    }
    
    for workout in dictionaryOfGroupedData {
        namedWorkouts.append( nameBasedWorkouts(workoutName: workout.key, workouts: workout.value))
    }
    
    print(namedWorkouts)
    
}

getDataforListings(workoutPlans: workOutArray)
