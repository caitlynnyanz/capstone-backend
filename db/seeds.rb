# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(first_name: "Caitlynn", last_name: "Yanz", email: "caitlynn@test.com", password: "password")
User.create!(first_name: "Test", last_name: "User", email: "test@test.com", password: "password")

Habit.create!(user_id: 1, name: "Night owls can be 'early birds' too..?", description: "Will gradually work up to getting out of bed every morning at 6am without snoozing.", icon_name: "alarm", start_date: "2022-07-22", end_date: "2022-10-21")
Habit.create!(user_id: 1, name: "#gains", description: "Up early, might as well do something productive..", icon_name: "barbell", start_date: "2022-08-19", end_date: "2022-11-18")
Habit.create!(user_id: 1, name: "Bookworm", description: "To wind down and get ready for bed, will read at least a chapter or two of current book reading.. also in an attempt to get back into reading!", icon_name: "book", start_date: "2022-09-02", end_date: "2022-12-01")





Goal.create!(user_id: 1, habit_id: 1, name: "Wake up at 8:00am", description: "Will start with waking up at 8:00am every morning this week without snoozing.", start_date: "2022-07-22", end_date: "2022-07-28", active: false, end_reflection_completed: true)
Goal.create!(user_id: 1, habit_id: 1, name: "Wake up at 7:45am", description: "Will start with waking up at 7:45am every morning this week without snoozing.", start_date: "2022-07-29", end_date: "2022-08-04", active: false, end_reflection_completed: true)
Goal.create!(user_id: 1, habit_id: 1, name: "Wake up at 7:30am", description: "Will start with waking up at 7:30am every morning this week without snoozing.", start_date: "2022-08-05", end_date: "2022-08-11", active: false, end_reflection_completed: true)
Goal.create!(user_id: 1, habit_id: 1, name: "Wake up at 7:15am", description: "Will start with waking up at 7:15am every morning this week without snoozing.", start_date: "2022-08-12", end_date: "2022-08-18", active: false, end_reflection_completed: true)
Goal.create!(user_id: 1, habit_id: 1, name: "Wake up at 7:00am", description: "Will start with waking up at 7:00am every morning this week without snoozing.", start_date: "2022-08-19", end_date: "2022-08-25", active: false, end_reflection_completed: true)
Goal.create!(user_id: 1, habit_id: 2, name: "Morning weightlifting!", description: "At least 45 min weightlighting gym sesh after getting up.", start_date: "2022-08-19", end_date: "2022-08-25", active: false, end_reflection_completed: true)
Goal.create!(user_id: 1, habit_id: 1, name: "Wake up at 6:45am", description: "Will start with waking up at 6:45am every morning this week without snoozing.", start_date: "2022-08-26", end_date: "2022-09-02", active: false, end_reflection_completed: true)
Goal.create!(user_id: 1, habit_id: 2, name: "Morning weightlifting!", description: "At least 45 min weightlighting gym sesh after getting up.", start_date: "2022-08-26", end_date: "2022-09-02", active: false, end_reflection_completed: true)
Goal.create!(user_id: 1, habit_id: 3, name: "Read at least 1 chapter", description: "Every night before bed!", start_date: "2022-09-02", end_date: "2022-09-08", active: false, end_reflection_completed: true)
Goal.create!(user_id: 1, habit_id: 1, name: "Wake up at 6:30am", description: "Will start with waking up at 6:30am every morning this week without snoozing.", start_date: "2022-09-03", end_date: "2022-09-09", active: false, end_reflection_completed: true)
Goal.create!(user_id: 1, habit_id: 2, name: "Morning weightlifting!", description: "At least 45 min weightlighting gym sesh after getting up.", start_date: "2022-09-03", end_date: "2022-09-09", active: false, end_reflection_completed: true)
Goal.create!(user_id: 1, habit_id: 3, name: "Read at least 1 chapter", description: "Every night before bed!", start_date: "2022-09-09", end_date: "2022-09-16", active: true, end_reflection_completed: false)
Goal.create!(user_id: 1, habit_id: 1, name: "Wake up at 6:15am", description: "Will start with waking up at 6:15am every morning this week without snoozing.", start_date: "2022-09-10", end_date: "2022-09-17", active: true, end_reflection_completed: false)
Goal.create!(user_id: 1, habit_id: 2, name: "Morning weightlifting!", description: "At least 45 min weightlighting gym sesh after getting up.", start_date: "2022-09-10", end_date: "2022-09-17", active: true, end_reflection_completed: false)



Task.create!(user_id: 1, goal_id: 1, name: "8:00am wake up, no snooze", description: "Set only one alarm in an attempt to not snooze.", completed: true)
Task.create!(user_id: 1, goal_id: 2, name: "7:45am wake up, no snooze", description: "Set only one alarm in an attempt to not snooze.", completed: true)
Task.create!(user_id: 1, goal_id: 2, name: "Bed by 10pm", description: "In order to get enough sleep, I will put all electronics away and be in bed by 10pm every night.", completed: true)
Task.create!(user_id: 1, goal_id: 3, name: "7:30am wake up, no snooze", description: "Set only one alarm in an attempt to not snooze.", completed: true)
Task.create!(user_id: 1, goal_id: 3, name: "Bed by 10pm", description: "In order to get enough sleep, I will put all electronics away and be in bed by 10pm every night.", completed: true)
Task.create!(user_id: 1, goal_id: 4, name: "7:15am wake up, no snooze", description: "Set only one alarm in an attempt to not snooze.", completed: true)
Task.create!(user_id: 1, goal_id: 4, name: "Bed by 10pm", description: "In order to get enough sleep, I will put all electronics away and be in bed by 10pm every night.", completed: true)
Task.create!(user_id: 1, goal_id: 5, name: "7:00am wake up, no snooze", description: "Set only one alarm in an attempt to not snooze.", completed: true)
Task.create!(user_id: 1, goal_id: 5, name: "Bed by 10pm", description: "In order to get enough sleep, I will put all electronics away and be in bed by 10pm every night.", completed: true)
Task.create!(user_id: 1, goal_id: 6, name: "Gym", description: "After waking up, get ready and hit the gym.", completed: true)
Task.create!(user_id: 1, goal_id: 7, name: "6:45am wake up, no snooze", description: "Set only one alarm in an attempt to not snooze.", completed: true)
Task.create!(user_id: 1, goal_id: 7, name: "Bed by 10pm", description: "In order to get enough sleep, I will put all electronics away and be in bed by 10pm every night.", completed: true)
Task.create!(user_id: 1, goal_id: 8, name: "Gym", description: "After waking up, get ready and hit the gym.", completed: true)
Task.create!(user_id: 1, goal_id: 8, name: "Breakfast (before gym)", description: "Yah I need to eat something before the gym if I am going to keep this up lol..", completed: true)
Task.create!(user_id: 1, goal_id: 9, name: "Phone away, book queued!", description: "Will read at least one chapter before going to sleep.", completed: false)
Task.create!(user_id: 1, goal_id: 10, name: "6:30am wake up, no snooze", description: "Set only one alarm in an attempt to not snooze.", completed: false)
Task.create!(user_id: 1, goal_id: 10, name: "Bed by 10pm", description: "In order to get enough sleep, I will put all electronics away and be in bed by 10pm every night.", completed: false)
Task.create!(user_id: 1, goal_id: 11, name: "Gym", description: "After waking up, get ready and hit the gym.", completed: false)
Task.create!(user_id: 1, goal_id: 11, name: "Breakfast (before gym)", description: "Much better!", completed: false)



Event.create!(user_id: 1, habit_id: 1, title: "Early bird gets the worm", start: "2022-07-22", end: "2022-10-21", color: "a1")
Event.create!(user_id: 1, goal_id: 1, title: "Wake up at 8:00am", start: "2022-07-22", end: "2022-07-28", color: "b1")
Event.create!(user_id: 1, goal_id: 2, title: "Wake up at 7:45am", start: "2022-07-29", end: "2022-08-04", color: "b1")
Event.create!(user_id: 1, goal_id: 3, title: "Wake up at 7:30am", start: "2022-08-05", end: "2022-08-11", color: "b1")
Event.create!(user_id: 1, goal_id: 4, title: "Wake up at 7:15am", start: "2022-08-12", end: "2022-08-18", color: "b1")
Event.create!(user_id: 1, goal_id: 5, title: "Wake up at 7:00am", start: "2022-08-19", end: "2022-08-25", color: "b1")
Event.create!(user_id: 1, habit_id: 1, title: "#gains", start: "2022-08-19", end: "2022-11-18", color: "a2")
Event.create!(user_id: 1, goal_id: 6, title: "Morning weightlifting!", start: "2022-08-19", end: "2022-08-25", color: "b2")
Event.create!(user_id: 1, goal_id: 7, title: "Wake up at 6:45am", start: "2022-08-26", end: "2022-09-02", color: "b1")
Event.create!(user_id: 1, goal_id: 8, title: "Morning weightlifting!", start: "2022-08-26", end: "2022-09-02", color: "b2")
Event.create!(user_id: 1, habit_id: 3, title: "Bookworm", start: "2022-09-02", end: "2022-12-01", color: "a3")
Event.create!(user_id: 1, goal_id: 9, title: "Read at least 1 chapter", start: "2022-09-02", end: "2022-09-08", color: "b3")
Event.create!(user_id: 1, goal_id: 10, title: "Wake up at 6:30am", start: "2022-09-03", end: "2022-09-09", color: "b1")
Event.create!(user_id: 1, goal_id: 11, title: "Morning weightlifting!", start: "2022-09-03", end: "2022-09-09", color: "b2")
Event.create!(user_id: 1, goal_id: 9, title: "Read at least 1 chapter", start: "2022-09-09", end: "2022-09-16", color: "b3")
Event.create!(user_id: 1, goal_id: 10, title: "Wake up at 6:15am", start: "2022-09-10", end: "2022-09-17", color: "b1")
Event.create!(user_id: 1, goal_id: 11, title: "Morning weightlifting!", start: "2022-09-10", end: "2022-09-17", color: "b2")


Journal.create!(user_id: 1, habit_id: 1, goal_id: 1, title: "Weekly Reflection: Wake up at 8:00am", body: "This week..", date: "2022-07-28")
Journal.create!(user_id: 1, habit_id: 1, goal_id: 2, title: "Weekly Reflection: Wake up at 7:45am", body: "This week..", date: "2022-08-04")
Journal.create!(user_id: 1, habit_id: 1, goal_id: 3, title: "Weekly Reflection: Wake up at 7:30am", body: "This week..", date: "2022-08-11")
Journal.create!(user_id: 1, habit_id: 1, goal_id: 4, title: "Weekly Reflection: Wake up at 7:15am", body: "This week..", date: "2022-08-18")
Journal.create!(user_id: 1, habit_id: 1, goal_id: 5, title: "Weekly Reflection: Wake up at 7:00am", body: "This week..", date: "2022-08-25")
Journal.create!(user_id: 1, habit_id: 2, goal_id: 6, title: "Weekly Reflection: Morning weightlifting!", body: "This week..", date: "2022-08-25")
Journal.create!(user_id: 1, habit_id: 1, goal_id: 7, title: "Weekly Reflection: Wake up at 6:45am", body: "This week..", date: "2022-09-02")
Journal.create!(user_id: 1, habit_id: 2, goal_id: 8, title: "Weekly Reflection: Morning weightlifting!", body: "This week..", date: "2022-09-02")
Journal.create!(user_id: 1, habit_id: 3, goal_id: 9, title: "Weekly Reflection: Read at least 1 chapter", body: "This week..", date: "2022-09-07")
Journal.create!(user_id: 1, habit_id: 1, goal_id: 10, title: "Weekly Reflection: Wake up at 6:30am", body: "This week..", date: "2022-09-09")
Journal.create!(user_id: 1, habit_id: 2, goal_id: 11, title: "Weekly Reflection: Morning weightlifting!", body: "This week..", date: "2022-09-09")

puts "Done!"