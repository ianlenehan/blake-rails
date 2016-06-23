Please [click here](https://blooming-crag-17441.herokuapp.com) to view the app on Heroku.

Please [click here](https://blooming-crag-17441.herokuapp.com/students.json) to view JSON representation of student progress.

Students, teachers and lessons have been loaded via seed data. Progress is updated manually as follows:
* select a teacher from the root path to view their class.
* select a student from the class to view and update progress.
* to update progress, type in a mark (out of 100) and select "Update Progress"
* this will add that mark to the student history for the "Current Lesson" and will update the current lesson details.
* the number of parts can be updated for each lesson individually through the "lessons" nav link.
* there is a report link at the bottom of the class list to view progress of each student (Mr Murphy's class has the most progress data).


### PROBLEM
Company X is developing a new app for student education. Students complete lessons and their progress is recorded.
Each lesson has 3 parts - 1, 2 and 3. There are 100 lessons in total.

#### PART 1
Generate a rails app that persists students and their progress.

Define routes for:
a) setting a student's progress - progress should consist of a lesson and part number.
b) returning a JSON representation of a student and their associated progress.

#### PART 2
Teachers have classes containing number of students.

a) Add a teacher model that is related to students
b) Create a reports page for a teacher to view progress of all their students.

#### PART 3
Calculating progress

a) add a method for updating student progress - this should verify that the
student is only able to complete the next part number in sequence e.g.

L1 P1, L1 P2, L1 P3, L2 P1, L2 P2 etc

#### PART 4 (OPTIONAL)
a) the first 50 lessons now have 5 parts. Ensure the system will still work as expected and no students progress will be lost
