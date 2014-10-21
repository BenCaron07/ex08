part of ex08;


//Exercise 8.1 
//Sort by last name

sortbylastname(var members) {
  List lastName = new List();
  for (var i = 0; i < members.length; i++) {
    lastName.add(members[i]['lastName']);
  }
  for (var i = 1; i < lastName.length; i++){
    var a;
    var b = new Map ();
    var r;
    a = lastName[i];
    b = members[i];
    r = i;
    while (r >= 1 && lastName[r-1].compareTo(a) > 0){
  lastName[r] = lastName [r - 1];
  members[r] = members[r - 1];
  r = r - 1;
  }
  lastName[r] = a;
  members[r] = b;
  }
  print(members);
}

//Sort by first name

sortbyfirstname(var members) {
  List firstName = new List();
  for (var i = 0; i < members.length; i++) {
    firstName.add(members[i]['firstName']);
  }
  for (var i = 1; i < firstName.length; i++){
    var a;
    var b = new Map ();
    var r;
    a = firstName[i];
    b = members[i];
    r = i;
    while (r >= 1 && firstName[r-1].compareTo(a) > 0){
  firstName[r] = firstName [r - 1];
  members[r] = members[r - 1];
  r = r - 1;
  }
  firstName[r] = a;
  members[r] = b;
  }
  print(members);
}

//Sort by a given letter

byletter (members, aletter){
  List letter = new List();
  for (var i = 0; i < members.length; i++){
    Map sortbyletter = members[i];
    var lastName = sortbyletter["lastName"];
    if(lastName.startsWith(aletter)) {
      letter.add(sortbyletter);
          }
  }
  print(letter);
}

//Exercise 8.2

printM(var m){
  for(var a in m){
    print(a);}
}

addMember(var associateName, var firstName, var lastName, var email, var listM){
  listM.add({
    'associateName': associateName,
    'firstName': firstName,
    'lastName': lastName,
    'email': email});
  print('Add a member : $firstName $lastName'); printM(listM); print('');
}

removeMember(var firstName, var lastName, var listM){
  for(var i = 0; i < listM.length; i++){
    if(listM[i]['firstName'] == firstName && listM[i]['lastName'] == lastName){
      listM.removeAt(i);}}
  print('Remove a member : $firstName $lastName'); printM(listM); print('');
}

updateMember(var associateName, var firstName, var lastName, var email, var listM){
  for(var i = 0; i < listM.length; i++){
    if(listM[i]['firstName'] == firstName && listM[i]['lastName'] == lastName){
      listM[i]['associationName'] = associateName;
      listM[i]['firstName'] = firstName;
      listM[i]['lastName'] = lastName;
      listM[i]['email'] = email; }}
  print('Update member : $firstName $lastName'); printM(listM); print('');
}

Member(var firstName, var lastName, var listM){
  for(var i in listM){
    if(i['firstName'] == firstName && i['lastName'] == lastName)
      return true;}
  return false;
}



