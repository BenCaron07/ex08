import 'package:ex08/functionsex08.dart';

void main () {
  // Exercice 8.1  
  print("Exercice 8.1");
  print('');
  // Section 1
  print('Section 1: Create a list of members sorted by');
  print('');
  List associations = [
    {'name': 'IS', 'description': 'Information Systems'},
    {'name': 'CS', 'description': 'Computer Science'},];

  List members = [
    {'associationName': 'IS', 'firstName': 'Dzenan', 'lastName': 'Ridjanovic', 'email': 'dr@gmail.com'},
    {'associationName': 'CS', 'firstName': 'Antoine', 'lastName': 'Curtis', 'email': 'ac@gmail.com'},
    {'associationName': 'IS', 'firstName': 'Robert', 'lastName': 'Nelson', 'email': 'rn@gmail.com'}];
  
  print('Last name : ');
  sortByLastname(members);
  print("");
  print('First name : ');
  sortByFirstname(members);
  print("");
  
  // Section 2
  print('Section 2: Obtain members whose last name begins with a given letter (N in this case)  ');
  print('');
  var letter = 'N';
  byLetter(members,letter);
  print("");
  
// Exercise 8.2
print("Exercise 8.2");
print("");
print('Maintenance of a class');
print('');;
print('Model class : ');
print('{associationName : IS, firstName: Dzenan, lastName: Ridjanovic, email: dr@gmail.com} \n{associationName : CS, firstName: Antoine, lastName: Curtis, email: ac@gmail.com} \n{associationName: IS, firstName: Robert, lastName: Nelson, email : rn@gmail.com}');
print("");
List<Map> members2 = [ 
                      {'associationName': 'IS', 'firstName': 'Dzenan', 'lastName': 'Ridjanovic', 'email': 'dr@gmail.com'},
                      {'associationName': 'CS', 'firstName': 'Antoine', 'lastName': 'Curtis', 'email': 'ac@gmail.com'},
                      {'associationName': 'IS', 'firstName': 'Robert', 'lastName': 'Nelson', 'email': 'rn@gmail.com'}];

assert(!Member('Erik', 'Cole', members2));
addMember('DA', 'Erik', 'Cole', 'ec@gmail.com', members2); //DA stands for database analyst.

assert(Member('Dzenan', 'Ridjanovic', members2));
removeMember('Dzenan', 'Ridjanovic', members2);

assert(Member('Antoine', 'Curtis', members2));
updateMember('AS', 'Antoine', 'Curtis' , 'Antoine_Curtis@hotmail.com' , members2);  

}