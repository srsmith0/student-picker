students = ["Leveille, Andre", "AshWorth, Ryan", "Biddinger, Caden", "Mbia, Arsene",
 "Boyden, Lindsay", "DelaCruz, Joey", "Dunshee, Kyle", "Riches, James", 
 "Smith, Shawn", "Sultan, Maxwell", "Zarate, Javier"]

 #my task now is to create a group randomizer
students_formated = students.map do |student|
  #need to separate firsts and last name from original string
  name_arr = student.split(',')
  first = name_arr[1].strip
  last = name_arr[0].strip
 
  { first_name: first, last_name: last }
end
p students_formated
 # create a new array of hashes with key first_name and last_name

 # with new array, randomly select people and assign to groups

 # print out groups in a slack friendly format