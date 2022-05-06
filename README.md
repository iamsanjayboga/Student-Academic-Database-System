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

Schemas in Student Academic Details
A database table is said to be in 3NF if it is in 2NF and all non-key fields are dependent on the primary key or A table is also said to be in 3NF 
if it is in 2NF and none of the table's fields is transitively functionally dependent on the primary key.
 
Table 1: Course_Info
![image](https://user-images.githubusercontent.com/57935798/167157492-cd2259b8-90fe-4173-8eab-03a9f8c3ec50.png)

This is used to store course-related information such as course code, course name and the instructor who will be teaching the respective course.

 
Table 2: Marks_Info
![image](https://user-images.githubusercontent.com/57935798/167157521-9dd876a3-892d-445f-930a-acacd9110e41.png)

Marks_Info table stores marks of each course that is obtained by a student. This table is stored in the form of student_id to identify particular courses and marks.
 
Table 3: Student_Info
![image](https://user-images.githubusercontent.com/57935798/167157536-b6a4a4a2-d695-43c1-85f4-1cd1a5fa22f8.png)

This is the main student record table in which will be holding all the student records who are admitted into the university.
 
Table 4: Department
![image](https://user-images.githubusercontent.com/57935798/167157564-29a801eb-bd98-4bbe-b5b4-2caf7aefad96.png)

All the above normalized tables are derived from un-normalized data.

![image](https://user-images.githubusercontent.com/57935798/167157592-b2e33dcb-23f3-4015-ae03-35428586727a.png)
Figure 2: Unnormalized/Raw Data
