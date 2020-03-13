def interactive_menu
  students = []
  loop do
    # 1. print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit" # 9 because we'll be adding more items
    # 2. read the input and save it into a variable
    selection = gets.chomp
    # 3. do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  end
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create and empty array
  students = []
  # get the first name
  name = gets.chomp
  puts "Enter cohort"
  cohort = gets.chomp
  cohort = :Empty if cohort.empty?
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add student has to the array
    students << {name: name, cohort: cohort.to_sym}
    if students.count == 1
      puts "Now we have #{students.count} student"
    else
      puts "Now we have #{students.count} students"
    end
    # get another name from user
    name = gets.chomp
    if name.empty?
      break
    else
      puts "Enter cohort"
      cohort = gets.chomp.capitalize
      cohort = :Empty if cohort.empty?
    end
  end
  # return array of students
  students
end

def print_header
  puts "The students of Villians Academy"
  puts "-------------"
end
def print(students)
  if students.count > 0
    students.each do |student|
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

def print_footer(students)
  if students.count == 0
    puts "There are no students"
  elsif students.count == 1
    puts "Overall, we have #{students.count} great student"
  else
    puts "Overall, we have #{students.count} great students"
  end
end

students = interactive_menu
