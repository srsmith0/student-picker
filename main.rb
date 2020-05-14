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

 # create a new array of hashes with key first_name and last_name
students_formated.shuffle!

#this creates the groups.  Need a group array and the i +1 takes the index+1 to create the group number
groups = []
5.times do |i|
  groups.push({ name: "group #{i + 1}", members: [students_formated.pop, students_formated.pop] })
end

#this handles the last person since we have an odd number
index = rand(groups.size)
groups[index][:members].push(students_formated.pop)

 puts groups
 puts students_formated.size

 # with new array, randomly select people and assign to groups

 # print out groups in a slack friendly format