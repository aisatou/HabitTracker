# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Habit.create(name: "Yoga Poses", description: "Did you spend at least 10 minutes, ahem?")
Habit.create(name: "Drink some water", description: "Get them 8-10 glasses goin'! Chug!")
Habit.create(name: "Call mom or dad", description: "You know you want toooooo.")
Habit.create(name: "Tidy the house", description: "You got this!")
Habit.create(name: "Sleep before 11 pm", description: "It's hard, but you got this!")

User.create(name: "Aisha")
User.create(name: "Roniece")
User.create(name: "Hana")
User.create(name: "Inayah")
User.create(name: "Soraya")
User.create(name: "Aliya")
User.create(name: "Sarah")

Schedule.create(time: "Yoga Poses", user_id: 1, habit_id: 1, frequency: "Weekly")
Schedule.create(time: "Drink some water", user_id: 2, habit_id: 2, frequency: "Daily")
Schedule.create(time: "Call mom or dad", user_id: 3, habit_id: 3, frequency: "Daily")
Schedule.create(time: "Tidy the house", user_id: 4, habit_id: 4, frequency: "Weekly")
Schedule.create(time: "Sleep before 11 pm", user_id: 5, habit_id: 5, frequency: "Daily")
