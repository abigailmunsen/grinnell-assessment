# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   Philosopher.delete_all
#   Suggestion.delete_all
InstGoal.delete_all
Department.delete_all

InstGoal.create(goalNum: 1, goalText:"Creative and Critical Thinking Skills", goalDetails:"Students develop creative and critical thinking skills that allow them to analyze the work of others, formulate relevant questions, and respond to those questions in a substantive way using quantitative and qualitative evidence.")
InstGoal.create(goalNum: 2, goalText:"Social Responsibility", goalDetails:"Students develop a sense of social responsibility and fairness that guides them in their personal and professional lives.")
InstGoal.create(goalNum: 3, goalText:"Communication", goalDetails:"Students develop the ability to communicate clearly and persuasively in various modes for various purposes and audiences.")
InstGoal.create(goalNum: 4, goalText:"Independent Learning", goalDetails:"Students develop the ability to continue learning independently and collaboratively.")
InstGoal.create(goalNum: 5, goalText:"Perspectives", goalDetails:"Students develop the ability to approach a question from multiple perspectives, representing a diversity of ideas and experiences.")
InstGoal.create(goalNum: 6, goalText:"In-Depth Learning", goalDetails:"Students pursue a chosen field of study in depth and develop understanding of a core body of knowledge in that field as well as the ability to employ modes of inquiry appropriate to that field.")


Department.create(name: "Chemistry", code:"CHM")
Department.create(name: "Classics", code:"CLS")
Department.create(name: "Computer Science", code:"CSC")

DeptGoal.create(goalNum: 1, goalText: "To gain an understanding of the field of chemistry.", goalDetails: "Learn the atomic/molecular nature of matter, and its interactions and reactivities. Appreciate the traditional sub-disciplines of chemistry. Understand how chemistry relates to other fields (inter/multi-disciplinary).",
InstGoal_id: 6, Department: Department.where(name: "Chemistry").first)


#DeptGoal.create(goalNum: 2, goalText: "To develop skills in the scientific method in the context of chemistry.", goalDetails: "Learn to pose relevant questions and design experiments to answer them. Understand laboratory safety. Execute experiments, especially with modern instrumentation. Analyze and model data; judge the quality of data. Understand results in the context of theory. Understand ethical conduct of research.",
#InstGoal_id: InstGoal.find_by(goalNum: 6).id, Department_id: Department.where(name: "Chemistry").first.id)
