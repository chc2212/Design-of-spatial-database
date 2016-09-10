# Design-of-spatial-database
This is final project in "Database Systems" lecture.

#Project Background
Panthera, the world’s leading cat conservation organization, is focusing on saving endangered
Lions in African national park. They have divided the park into multiple regions and purchased a
number of ambulances to provide emergency health care service to Lions. Ambulances are
parked at various locations in the park to cover the nearby lions. The park also has several
ponds where Lions go to drink water.

#Project Requirement

1.Create createdb.sql
* We will use this SQL file to create and populate the database that is used for this project
on Oracle Express 11g.
* You need to design the tables and assign data types to attributes such that the
information of the lions, regions and ambulances can be accessed and manipulated.
* You must use spatial data types such as SDO_GEOMETRY to store location data. For
example, rather than defining two integers to store x and y coordinates, you need to
create one column of SDO_GEOMETRY type and store both coordinates as a point
object.
* You must create spatial index for each tablename-geometry column.

2.Write a program to write a program to create an application with a
GUI, which allows users to interact with the spatial data provided in the first part of the
homework. In case you choose to use Java, you will use JDBC in your java program to
communicate with the oracle database.

Specification:
When the user runs your program, it must fetch all regions, all ponds and all lions from the
oracle database and show them in the GUI. Here are the original colors that you should use to
show the geometries:
* boundary/border of each region must be displayed in black color
* interior of each regions must be displayed in white color
* boundary/border of each pond must be displayed in black color
* interior of each pond must be displayed in blue color
* each lion must be displayed in green color

The GUI should interact with the user in the following way:
* Display a checkbox with title “show lions and ponds in the selected region”
* If the checkbox “show lions and ponds in selected region” is checked and the
user clicks on a region, the GUI must show all the lions and ponds inside the
region in red color.
* After clicking on one region, if the user clicks on another region, lions and ponds
in the previously clicked region must be reset to their original colors.
* If the user unchecks the checkbox “show lions and ponds in selected region”, all
the lions and ponds must be reset to their original colors.

# Instructions
1. Run Sqldeveloper and connect Database (ID: system, Password: 12345)
2. Query createdb.sql in Sqldeveloper to set up initial table
3. Import JavaProject to Eclipse
4. Import library files in JavaProject/library into Eclipse project
5. Run project
 

#Development Enviroment
- Windows 8
- Eclipse Luna(4.4.2) 
- JRE 8
- Oracle Express 11g
- Sqldeveloper

#Screen Captures
<img src="https://github.com/chc2212/Design-of-spatial-database/blob/master/pic1.JPG" width="300" align ="left">
<img src="https://github.com/chc2212/Design-of-spatial-database/blob/master/pic2.JPG" width="300" align ="left">
