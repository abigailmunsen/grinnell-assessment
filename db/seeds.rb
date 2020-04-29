# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#deletes all data before reseeding.
#deletions must be in this order.
Coursegoal.delete_all
Course.delete_all
Deptgoal.delete_all
Department.delete_all
Instgoal.delete_all


Instgoal.create(goalNum: 1, goalText:"Creative and Critical Thinking Skills", goalDetails:"Students develop creative and critical thinking skills that allow them to analyze the work of others, formulate relevant questions, and respond to those questions in a substantive way using quantitative and qualitative evidence.")
Instgoal.create(goalNum: 2, goalText:"Social Responsibility", goalDetails:"Students develop a sense of social responsibility and fairness that guides them in their personal and professional lives.")
Instgoal.create(goalNum: 3, goalText:"Communication", goalDetails:"Students develop the ability to communicate clearly and persuasively in various modes for various purposes and audiences.")
Instgoal.create(goalNum: 4, goalText:"Independent Learning", goalDetails:"Students develop the ability to continue learning independently and collaboratively.")
Instgoal.create(goalNum: 5, goalText:"Perspectives", goalDetails:"Students develop the ability to approach a question from multiple perspectives, representing a diversity of ideas and experiences.")
Instgoal.create(goalNum: 6, goalText:"In-Depth Learning", goalDetails:"Students pursue a chosen field of study in depth and develop understanding of a core body of knowledge in that field as well as the ability to employ modes of inquiry appropriate to that field.")

#CHEMISTRY
Department.create(deptSubject: "Chemistry", deptFullName: "Department of Chemistry", deptCode:"CHM")

Deptgoal.create(goalNum: 1, goalText: "To gain an understanding of the field of chemistry.", goalDetails: "Learn the atomic/molecular nature of matter, and its interactions and reactivities. Appreciate the traditional sub-disciplines of chemistry. Understand how chemistry relates to other fields (inter/multi-disciplinary).", instgoal: Instgoal.find_by(goalNum: 6), department: Department.find_by(deptSubject: "Chemistry"))
Deptgoal.create(goalNum: 2, goalText: "To develop skills in the scientific method in the context of chemistry.", goalDetails: "Learn to pose relevant questions and design experiments to answer them. Understand laboratory safety. Execute experiments, especially with modern instrumentation. Analyze and model data; judge the quality of data. Understand results in the context of theory. Understand ethical conduct of research.", instgoal: Instgoal.find_by(goalNum: 6), department: Department.find_by(deptSubject: "Chemistry"))
Deptgoal.create(goalNum: 3, goalText: "To develop skills in problem solving.", goalDetails: "Conceptual problem solving. Quantitative problem solving. Critical thinking about complex systems. Evidence based argumentation. Troubleshooting (equipment, software, experimental design.", instgoal: Instgoal.find_by(goalNum: 1), department: Department.find_by(deptSubject: "Chemistry"))
Deptgoal.create(goalNum: 4, goalText: "To develop effective communication skills.", goalDetails: "Use the literature (find, read and critically evaluate scientific work). Write well (notebook, report, journal manuscript, research proposal). Employ figures and other graphics effectively. Speak well (discussion, oral presentation of poster and seminar).", instgoal: Instgoal.find_by(goalNum: 3), department: Department.find_by(deptSubject: "Chemistry"))
Deptgoal.create(goalNum: 5, goalText: "To develop as a scientist.", goalDetails: "Hone both independence and group work skills. Understand the processes of research (experiments->study->program, paper and grant submissions). Foster creativity. Lifelong learning (textbook reading and interpretation, filtering, primary literature).", instgoal: Instgoal.find_by(goalNum: 4), department: Department.find_by(deptSubject: "Chemistry"))

Course.create(courseCode: 129, courseSection: 01, semester: "2020S", courseTitle: "General Chemistry w/lab", courseDetails: "An introductory course. Primary emphasis on stoichiometry, atomic and molecular structure, dynamic equilibrium, acid-base chemistry, thermodynamics, electronic structure, and intermolecular interactions. Three classes, one laboratory each week.", department: Department.find_by(deptSubject: "Chemistry"))
Course.create(courseCode: 129, courseSection: 02, semester: "2020S", courseTitle: "General Chemistry w/lab", courseDetails: "An introductory course. Primary emphasis on stoichiometry, atomic and molecular structure, dynamic equilibrium, acid-base chemistry, thermodynamics, electronic structure, and intermolecular interactions. Three classes, one laboratory each week.", department: Department.find_by(deptSubject: "Chemistry"))
Course.create(courseCode: 210, courseSection: 01, semester: "2020S", courseTitle: "General Chemistry w/lab", courseDetails: "Leads to advanced work in the department. Principles of inorganic chemistry and elementary quantitative analysis, including ionic equilibrium, electrochemistry, and acid-base chemistry. Three classes, one laboratory each week", department: Department.find_by(deptSubject: "Chemistry"))

Coursegoal.create(goalNum: 1, goalText: "Learn about chemistry concepts.", goalDetails: "Learn about chemical reactions, types of chemicals, and more.", deptgoal: Deptgoal.find_by(goalNum: 1), course: Course.find_by(courseCode: 129, courseSection: 01, semester: "2020S"))
Coursegoal.create(goalNum: 2, goalText: "Learn lab skills.", goalDetails: "Learn to mix chemicals together safely in the lab.", deptgoal: Deptgoal.find_by(goalNum: 2), course: Course.find_by(courseCode: 129, courseSection: 01, semester: "2020S"))
Coursegoal.create(goalNum: 1, goalText: "Learn about chemistry concepts.", goalDetails: "Learn about chemical reactions, types of chemicals, and more.", deptgoal: Deptgoal.find_by(goalNum: 1), course: Course.find_by(courseCode: 129, courseSection: 02, semester: "2020S"))
Coursegoal.create(goalNum: 2, goalText: "Learn lab skills.", goalDetails: "Learn to mix chemicals together safely in the lab.", deptgoal: Deptgoal.find_by(goalNum: 2), course: Course.find_by(courseCode: 129, courseSection: 02, semester: "2020S"))
Coursegoal.create(goalNum: 1, goalText: "Learn about advanced chemistry concepts.", goalDetails: "Learn about advanced chemical reactions, types of advanced chemicals, and more.", deptgoal: Deptgoal.find_by(goalNum: 1), course: Course.find_by(courseCode: 210, courseSection: 01, semester: "2020S"))


#CLASSICS
Department.create(deptSubject: "Classics", deptFullName: "Classics Department", deptCode:"CLS")

Deptgoal.create(goalNum: 1, goalText: "Greek and Latin Languages.", goalDetails: "Give students of the Greek and Latin languages a competence in the reading of these languages which will allow them to interpret classical texts independently and to appreciate the qualities of classical literature which are not conveyed in translation.", instgoal: Instgoal.find_by(goalNum: 3), department: Department.find_by(deptSubject: "Classics"))
Deptgoal.create(goalNum: 2, goalText: "Classics Knowledge.", goalDetails: "Give students of the classics knowledge and appreciation of classical civilization to a degree reasonable for the undergraduate level and the skills to achieve and improve upon this knowledge.", instgoal: Instgoal.find_by(goalNum: 6), department: Department.find_by(deptSubject: "Classics"))

Course.create(courseCode: 263, courseSection: 01, semester: "2020S", courseTitle: "Political Theory I", courseDetails: "A selective introduction to the major concepts and themes of Western political philosophy from classical Greece to the Renaissance. Topics may include: human nature, the basis of society, the purpose and justification of government, types of government and their relative merits, the function of law, political virtues, and the civic role of religion.", department: Department.find_by(deptSubject: "Classics"))

Coursegoal.create(goalNum: 1, goalText: "Learn about political theory.", goalDetails: "Learn about classical political thinkers and their theories.", deptgoal: Deptgoal.find_by(goalNum: 2), course: Course.find_by(courseCode: 263, courseSection: 01, semester: "2020S"))


#COMPUTER SCIENCE
Department.create(deptSubject: "Computer Science", deptFullName: "Department of Computer Science", deptCode:"CSC")

Deptgoal.create(goalNum: 1, goalText: "Problem-solving paradigms", goalDetails: "Graduates should be competent in solving problems using several paradigms of computer science, including imperative, object-oriented, and functional programming.", instgoal:Instgoal.find_by(goalNum: 5), department: Department.find_by(deptSubject: "Computer Science"))
Deptgoal.create(goalNum: 2, goalText: "Understanding fundamental principles", goalDetails: "Graduates should understand fundamental principles in all core areas of computer science (algorithms, programming languages, theory of computation, systems, software development methodology).", instgoal:Instgoal.find_by(goalNum: 6), department: Department.find_by(deptSubject: "Computer Science"))
Deptgoal.create(goalNum: 3, goalText: "Application of fundamental principles", goalDetails: "Graduates should be competent in solving problems using several paradigms of computer science, including imperative, object-oriented, and functional programming.", instgoal:Instgoal.find_by(goalNum: 6), department: Department.find_by(deptSubject: "Computer Science"))
Deptgoal.create(goalNum: 4, goalText: "Teamwork", goalDetails: "Graduates should be able to work effectively in team-based development projects.", instgoal:Instgoal.find_by(goalNum: 2), department: Department.find_by(deptSubject: "Computer Science"))
Deptgoal.create(goalNum: 5, goalText: "Communication", goalDetails: "Graduates should be able to communicate ideas effectively both orally and in written form.", instgoal:Instgoal.find_by(goalNum: 3), department: Department.find_by(deptSubject: "Computer Science"))
Deptgoal.create(goalNum: 6, goalText: "Career preparation", goalDetails: "Graduates should find that they have had appropriate undergraduate preparation leading toward satisfying careers.", instgoal:Instgoal.find_by(goalNum: 1), department: Department.find_by(deptSubject: "Computer Science"))

Course.create(courseCode: 324, courseSection: 01, semester: "2020S", courseTitle: "Software Dev Leadership w/Lab", courseDetails: "Provides a foundation for \"programming in the large\" and developing high-quality software that meets human needs. Introduces the software lifecycle, agile development methods, professional tools, and software design principles. Teams develop software for a community organization, supported by a faculty adviser and an alumni technical mentor. Students develop a substantial code base suitable for inclusion in a professional portfolio and gain experience working with a client. Includes laboratory work.", department: Department.find_by(deptSubject: "Computer Science"))
Course.create(courseCode: 324, courseSection: 02, semester: "2020S", courseTitle: "Software Dev Leadership w/Lab", courseDetails: "Provides a foundation for \"programming in the large\" and developing high-quality software that meets human needs. Introduces the software lifecycle, agile development methods, professional tools, and software design principles. Teams develop software for a community organization, supported by a faculty adviser and an alumni technical mentor. Students develop a substantial code base suitable for inclusion in a professional portfolio and gain experience working with a client. Includes laboratory work.", department: Department.find_by(deptSubject: "Computer Science"))

Coursegoal.create(goalNum: 1, goalText: "Apply Agile software development methodology, tools, and practices in real-world team project.s", goalDetails: "", deptgoal: Deptgoal.find_by(goalNum: 3), course: Course.find_by(courseCode: 324, courseSection: 01, semester: "2020S"))
Coursegoal.create(goalNum: 2, goalText: "Contrast Agile software development with plan-and-document methodologies.", goalDetails: "", deptgoal: Deptgoal.find_by(goalNum: 2), course: Course.find_by(courseCode: 324, courseSection: 01, semester: "2020S"))
Coursegoal.create(goalNum: 3, goalText: "Build SaaS applications with the Ruby on Rails framework and apply those skills on a large-scale project.", goalDetails: "", deptgoal: Deptgoal.find_by(goalNum: 3), course: Course.find_by(courseCode: 324, courseSection: 01, semester: "2020S"))
Coursegoal.create(goalNum: 4, goalText: "Apply object-oriented design principles and design patterns.", goalDetails: "", deptgoal: Deptgoal.find_by(goalNum: 1), course: Course.find_by(courseCode: 324, courseSection: 01, semester: "2020S"))
Coursegoal.create(goalNum: 5, goalText: "Apply techniques for understanding and modifying legacy code.", goalDetails: "", deptgoal: Deptgoal.find_by(goalNum: 6), course: Course.find_by(courseCode: 324, courseSection: 01, semester: "2020S"))
Coursegoal.create(goalNum: 6, goalText: "Gain experience with the complexities of real-world software development.", goalDetails: "", deptgoal: Deptgoal.find_by(goalNum: 4), course: Course.find_by(courseCode: 324, courseSection: 01, semester: "2020S"))

Coursegoal.create(goalNum: 1, goalText: "Apply Agile software development methodology, tools, and practices in real-world team project.s", goalDetails: "", deptgoal: Deptgoal.find_by(goalNum: 3), course: Course.find_by(courseCode: 324, courseSection: 02, semester: "2020S"))
Coursegoal.create(goalNum: 2, goalText: "Contrast Agile software development with plan-and-document methodologies.", goalDetails: "", deptgoal: Deptgoal.find_by(goalNum: 2), course: Course.find_by(courseCode: 324, courseSection: 02, semester: "2020S"))
Coursegoal.create(goalNum: 3, goalText: "Build SaaS applications with the Ruby on Rails framework and apply those skills on a large-scale project.", goalDetails: "", deptgoal: Deptgoal.find_by(goalNum: 3), course: Course.find_by(courseCode: 324, courseSection: 02, semester: "2020S"))
Coursegoal.create(goalNum: 4, goalText: "Apply object-oriented design principles and design patterns.", goalDetails: "", deptgoal: Deptgoal.find_by(goalNum: 1), course: Course.find_by(courseCode: 324, courseSection: 02, semester: "2020S"))
Coursegoal.create(goalNum: 5, goalText: "Apply techniques for understanding and modifying legacy code.", goalDetails: "", deptgoal: Deptgoal.find_by(goalNum: 6), course: Course.find_by(courseCode: 324, courseSection: 02, semester: "2020S"))
Coursegoal.create(goalNum: 6, goalText: "Gain experience with the complexities of real-world software development.", goalDetails: "", deptgoal: Deptgoal.find_by(goalNum: 4), course: Course.find_by(courseCode: 324, courseSection: 02, semester: "2020S"))
