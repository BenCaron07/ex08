library ex08;

part '../lib/functionsex08.dart';

void main () {
  // Exercice 8.1  
  print("Exercice 8.1");
  print('');
  // Section 1
  print('Create a list of members sorted by');
  print('');
  var associations = [
    {'name': 'IS', 'description': 'Information Systems'},
    {'name': 'CS', 'description': 'Computer Science'},];

  var members = [
    {'associationName': 'IS', 'firstName': 'Dzenan', 'lastName': 'Ridjanovic', 'email': 'dr@gmail.com'},
    {'associationName': 'CS', 'firstName': 'David', 'lastName': 'Curtis', 'email': 'dc@gmail.com'},
    {'associationName': 'IS', 'firstName': 'Robert', 'lastName': 'Nelson', 'email': 'rn@gmail.com'}];
  
  print('Last name : ');
  sortbylastname(members);
  print("");
  print('First name : ');
  sortbyfirstname(members);
  print("");
  
  // Section 2
  print('Section 2: Obtain members whose last name begin with a given letter (N in this case)  ');
  print('');
  var letter = 'N';
  byletter(members,letter);
  print("");
  
  // Exercise 8.2
  print("Exercise 8.2");
  print("");
  print('Maintenance of a class');
  print('');;
  print('Model class : ');
  print('{associationName : IS, firstName: Dzenan, lastName: Ridjanovic, email: dr@gmail.com} \n{associationName : CS, firstName: David, lastName: Curtis, email: dc@gmail.com} \n{associationName: IS, firstName: Robert, lastName: Nelson, email : rn@gmail.com}');
  print("");
  List<Map> members2 = [ 
                         {'associationName': 'IS', 'firstName': 'Dzenan', 'lastName': 'Ridjanovic', 'email': 'dr@gmail.com'},
                         {'associationName': 'CS', 'firstName': 'David', 'lastName': 'Curtis', 'email': 'dc@gmail.com'},
                         {'associationName': 'IS', 'firstName': 'Robert', 'lastName': 'Nelson', 'email': 'rn@gmail.com'}];
  
  assert(!Member('Erik', 'Cole', members2));
  addMember('DA', 'Erik', 'Cole', 'ec@gmail.com', members2); //DA stands for database analyst.

  assert(Member('Dzenan', 'Ridjanovic', members2));
  removeMember('Dzenan', 'Ridjanovic', members2);

  assert(Member('David', 'Curtis', members2));
  updateMember('CS', 'David', 'Curtis' , 'David_Curtis@hotmail.com' , members2);  

}