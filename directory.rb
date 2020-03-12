
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create and empty array
  students = []
  # get the first name
  name = gets.chomp
  height = gets.chomp
  birthplace = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add student has to the array
    students << {name: name, cohort: :november,
      birthplace: birthplace, height: height}
    puts "Now we have #{students.count} students"
    # get another name from user
    name = gets.chomp
    if name.empty?
      break
    else
      height = gets.chomp
      birthplace = gets.chomp
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
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort), #{student[:height]}cm from #{student[:birthplace]}."
  end
end
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print(students)
print_footer(students)
