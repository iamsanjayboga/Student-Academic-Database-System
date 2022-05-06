**Introduction**
Student academic details is essential for the smooth operation of any university with a large student population. 
It is a useful database system for university departments because it allows them to store and view information about 
any student who is currently enrolled in which course. This is built with SQL server, which aids in the management of
a university's student list. It also saves individual students' course-by-course grades, among other things.

**Database Design Diagram**
![image](https://user-images.githubusercontent.com/57935798/167156253-dffad808-140f-4e58-9a2d-4bc6e3d2ee57.png)

ER diagrams facilitate in explaining the logical structure of databases. Entities, attributes, and relationships are the
three fundamental concepts upon which ER diagrams are built.
           
In the Student Academic Details, We have 4 Entities i.e. Course, Student, Marks and Department. 
The course module has 3 attributes which are Course_Code, Course_Name and Instructor to hold course-related information. 
Student also has 3 attributes those are Student_ID, Student Name and Department_No which hold the students details and 
to which department they belong. Marks Entity consist of 3 attributes that are Course_Code, Student_ID and Marks which 
intend to store student course by course marks to evaluate the percentage and grade they obtained in respective subjects. 
Finally, Department composes of only 2 attributes i.e. Department_No and Department_Name which holds the total number of 
departments that the university consists of.

The above ERD depicts three total relationships: 
1)	Course_Info – Marks_Info: one - to – many relationship 
2)	Student_Info – Marks_Info: one - to - many relationship
3)	Department – Student_Info: one - to - many relationship

